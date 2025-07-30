#!/usr/bin/env node
/**
 * Auto-rebuild script for API Portal content changes
 * This ensures build artifacts stay in sync with source files
 * Works on both Windows and Linux/Mac
 */

const { execSync } = require('child_process');
const fs = require('fs');
const path = require('path');

// Check if we're in the right directory
if (!fs.existsSync('package.json')) {
    console.error('Error: Not in project root directory');
    process.exit(1);
}

console.log('Checking for content changes that require rebuild...');

try {
    // Get list of staged files
    const stagedFiles = execSync('git diff --cached --name-only', { encoding: 'utf8' })
        .split('\n')
        .filter(Boolean);
    
    // Check if any match our content patterns
    const contentPattern = /^dev-portal\/(public|src)\/.*\.(md|json|css|js|jsx|ts|tsx)$/;
    const hasContentChanges = stagedFiles.some(file => {
        // Normalize path separators for cross-platform compatibility
        const normalizedFile = file.replace(/\\/g, '/');
        return contentPattern.test(normalizedFile);
    });
    
    if (hasContentChanges) {
        console.log('Content changes detected. Running build...');
        
        // Run the build
        execSync('node run build', { stdio: 'inherit' });
        
        // Add the updated build artifacts to the commit
        execSync('git add lambdas/static-asset-uploader/build/', { stdio: 'inherit' });
        execSync('git add dev-portal/build/', { stdio: 'inherit' });
        
        console.log('Build complete and artifacts staged.');
    } else {
        console.log('No content changes detected. Skipping rebuild.');
    }
} catch (error) {
    console.error('Error during rebuild:', error.message);
    process.exit(1);
}