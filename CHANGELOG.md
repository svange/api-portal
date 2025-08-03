# CHANGELOG



## v0.4.0 (2025-08-03)

### Chore

* chore: trigger deployment with original dark theme

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`254a098`](https://github.com/svange/api-portal/commit/254a09889239b9dd08d73289d78276b8560014ee))

### Documentation

* docs: enhance CLAUDE.md with core philosophy and development standards

Added sections on enterprise development standards, required workflow, and pre-commit guidelines to improve clarity on project expectations and processes. Updated the branch naming convention and emphasized the importance of following TDD and documentation practices.

Updated prod.yaml with the latest timestamp for deployment tracking. ([`bd152ee`](https://github.com/svange/api-portal/commit/bd152eed628b9b638c09350fe7cc111db283dc20))

* docs: add fork repository management documentation

- Updated CLAUDE.md with fork limitations and simplified workflow
- Added Fork Repository Information section to README.md
- Documented working directly on main branch strategy
- Added instructions for syncing with upstream
- Cleaned up all feature branches (deleted locally and remotely) ([`dc05c7e`](https://github.com/svange/api-portal/commit/dc05c7e400f20a497c633c205149dcd7a37c295f))

### Feature

* feat: update Docker and MCP configurations

- Update .mcp.json with new tool configurations
- Enhance Dockerfile with additional setup
- Clean up docker-compose.yml

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`575d14c`](https://github.com/svange/api-portal/commit/575d14caa2bfd1a4a737192a5f67777fd396e5b7))

* feat: improve Docker environment for augint-library development

- Update Dockerfile header to specify augint-library focus
- Replace bind9-utils with bind9-dnsutils package
- Disable git hooks globally via core.hooksPath
- Add safe directories for all augint projects (api-portal, augint-api, augint-web, augint-library)
- Install project dependencies during build if pyproject.toml exists
- Remove runtime dependency installation from entrypoint

These changes optimize the container for augint-library development with pre-installed dependencies and broader project support.

Co-authored-by: Claude &lt;claude-assistant@anthropic.com&gt; ([`ff0cce0`](https://github.com/svange/api-portal/commit/ff0cce04c8c5aee142a02bd4432d029fc417e381))

* feat: enhance Docker environment with improved Git authentication and tools

- Add Git credential helper for seamless GitHub authentication
- Install additional development tools (jq, tree, htop, vim, less)
- Configure Git with enhanced settings for better Docker integration
- Improve Docker Compose environment variables handling
- Add proper Git configuration for root user

Co-authored-by: Claude &lt;claude-assistant@anthropic.com&gt; ([`b01b4a6`](https://github.com/svange/api-portal/commit/b01b4a63f17cf6d393e1a1b99556150d181c1b45))

* feat: add Docker Git authentication handling (#1)

- Add docker-entrypoint.sh script to handle Git configuration
- Mount Windows .gitconfig as .gitconfig.windows to avoid SSL conflicts
- Auto-configure GitHub CLI authentication when GH_TOKEN is present
- Force gnutls SSL backend to resolve curl SSL issues in container
- Filter out Windows-specific SSL backend settings

This improves the developer experience by automatically handling Git
authentication differences between Windows host and Linux container.

🤖 Generated with Claude Code

Co-authored-by: Claude &lt;noreply@anthropic.com&gt; ([`6e09aa2`](https://github.com/svange/api-portal/commit/6e09aa288bd0a39d61f5f5dd997173ee8c4dda20))

* feat: update Docker environment for root user with enhanced configurations and tools ([`d51bf55`](https://github.com/svange/api-portal/commit/d51bf55fa143893b8b07079731916f2f5cdff391))

* feat: add Docker development environment with Claude Code and LocalStack integration ([`7f7c793`](https://github.com/svange/api-portal/commit/7f7c793c8e5b5056e642cc6542e814c4d82f292d))

### Fix

* fix: update development environment timestamp in dev.yaml ([`b4e71c7`](https://github.com/svange/api-portal/commit/b4e71c7aeac3874f3fe3423b876338ff12f1103c))

* fix: correct Docker package name and improve Poetry setup

- Fix bind9-dnsutils package name to bind9-utils
- Enhance Poetry virtualenv auto-activation with dependency installation
- Clean up redundant git safe directory configurations
- Move dependency installation to entrypoint for better container startup

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`0a75868`](https://github.com/svange/api-portal/commit/0a7586838ac51c7501acd1e612e7108654cd9f71))

### Unknown

* revert: restore original dark theme with brain logo

- Remove Monokai-inspired dark theme (#272822 background)
- Restore cleaner original dark theme (#1a1a1a background)
- Replace cloud logos with original brain/head logo design
- Keep existing content (Home.md, GettingStarted.md remain unchanged)
- Reverts visual design from commits 56169ea0 and 20661318
- Restores design from commit 67aa0848

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`d99e309`](https://github.com/svange/api-portal/commit/d99e309e1cc2e3195a4589dc604735df313ca3cf))


## v0.3.0 (2025-07-30)

### Chore

* chore(release): 0.3.0 [skip ci] ([`60e4d77`](https://github.com/svange/api-portal/commit/60e4d77a5712c1994ed2fbe9f2ae7bc5251a2946))

* chore: trigger production deployment to test workflow fixes ([`e2228be`](https://github.com/svange/api-portal/commit/e2228be1b652d82a013e6581f18cf4374da2038f))

### Documentation

* docs: add extensive documentation about three-folder update requirement

- Document all files that must be updated in three locations
- Add clear examples and commands for copying files
- Emphasize that build system is fragile and cannot be used
- Make it crystal clear to never suggest single-location updates

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`8369496`](https://github.com/svange/api-portal/commit/83694962448cdd2874fe152652a20f0c5e0c9abd))

### Feature

* feat: rebrand portal with Augmenting Integrations identity

- Update home page to show &#34;Augmenting Integrations&#34; header with &#34;API Portal&#34; tagline
- Add professional AWS/Python/serverless focused content
- Update Getting Started to focus on Python SDK and boto3 integration
- Implement modern professional styling with Inter and JetBrains Mono fonts
- Add rounded corners, smooth transitions, and blue gradient buttons
- Replace default logos with custom cloud branding assets
- Apply all changes to source, build, and lambda directories

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`56169ea`](https://github.com/svange/api-portal/commit/56169ea0729cd332fa42799db4383edfd61e844d))

* feat: enhance dark mode theme with improved styling and visibility adjustments ([`2066131`](https://github.com/svange/api-portal/commit/206613183fc0893b24b904e787481e272a666d31))

* feat: implement dark mode theme and Augmenting Integrations branding

- Add dark mode CSS theme with proper Semantic UI overrides
- Replace logos with AI brain icons from branding assets
- Update favicon to match brand
- Remove pre-commit setup (keeping deployment simple)
- Trigger deployment with updated theme ([`67aa084`](https://github.com/svange/api-portal/commit/67aa08489432d8a8b628c2bbd9ddda9d13c6daa6))

* feat: add auto-rebuild pre-commit hook and update portal tagline ([`472df57`](https://github.com/svange/api-portal/commit/472df5764673a82bc00ba2ead8011ddc852a7f15))

### Fix

* fix: resolve semantic-release detached HEAD issue and enable both environments

- Fix workflow to checkout main branch then reset to deployed commit
- This prevents &#39;src refspec main does not match any&#39; error
- Enable both dev and prod environments for deployment
- Update timestamps to trigger deployments ([`242681e`](https://github.com/svange/api-portal/commit/242681eed37dba7da08b65ebc741e574c9c87387))

* fix: ensure semantic-release only runs for actual prod deployments

- Add outputs to track when prod deployment actually succeeds
- Check out exact deployed commit for release process
- Verify commit SHA before running semantic-release
- Fail cleanly if push conflicts occur to maintain release integrity

This prevents the issue where semantic-release runs even when deployment
was skipped, and ensures releases exactly match what was deployed. ([`5b8e717`](https://github.com/svange/api-portal/commit/5b8e717edceefb111109cc2c794fae784af3220c))

* fix: enable production environment and update timestamp for accuracy ([`18ec2e9`](https://github.com/svange/api-portal/commit/18ec2e95801106aede0901176415646ee2003838))

* fix: update timestamp in dev.yaml for accuracy ([`5899057`](https://github.com/svange/api-portal/commit/589905755580e0cebd6536df55114c8c331867e1))

* fix: modify deployment script to exit successfully when deployment is skipped ([`8b94e0e`](https://github.com/svange/api-portal/commit/8b94e0ee0e4953c651e43448e408a392f09f2530))

* fix: modify deployment script to exit successfully when deployment is skipped ([`5bfd6bf`](https://github.com/svange/api-portal/commit/5bfd6bf1bfe9da1e5f5ed4a1798d64b0ddf7d62c))

* fix: show skipped status in GitHub Actions when environments are disabled or unchanged

- Add step to mark job as skipped (gray) when no deployment occurs
- Uses exit code 78 to properly indicate skip status
- Makes dashboard more meaningful: green=deployed, gray=skipped, red=failed
- Helps track which environments actually received updates ([`aa0ed13`](https://github.com/svange/api-portal/commit/aa0ed136ba661becec238935609be43a7fb76fff))

* fix: update prod.yaml to disable production environment and correct timestamps in dev.yaml ([`a859d4c`](https://github.com/svange/api-portal/commit/a859d4cb7318791809f8cc9f836dbbf20607932f))

* fix: restore prod.yaml to match remote - no prod deployment ([`cd7a684`](https://github.com/svange/api-portal/commit/cd7a68459db6ea147c7118132315aa6365373715))

* fix: make pre-commit hook more resilient and trigger deployment ([`d9292f1`](https://github.com/svange/api-portal/commit/d9292f166be1d0a34f7ffe3b31a68c9342ce5a1f))

### Test

* test: verify pre-commit hook works ([`d4e3855`](https://github.com/svange/api-portal/commit/d4e38554ca11d7dd9888b0a32eee86dca1cad867))


## v0.2.0 (2025-07-30)

### Chore

* chore(release): 0.2.0 [skip ci] ([`19fde63`](https://github.com/svange/api-portal/commit/19fde63286b666fb210b6efdc63d48e13fa6f3df))

### Feature

* feat: implement proper DNS subdomain delegation pattern

- Revert CustomDomainRecordSet to always use subdomain hosted zone
- Add SubdomainDelegationRecords to automatically create NS records in parent zone
- Keep HostedZoneName parameter for specifying parent zone for delegation
- Matrix strategy for parallel deployment of both environments
- Fix parameter parsing to handle inline comments

This implements the standard Route53 subdomain delegation pattern where:
- Subdomain zone contains the A record pointing to CloudFront
- Parent zone contains NS records delegating to subdomain zone
- Fully automated with no manual DNS configuration required ([`6bec71a`](https://github.com/svange/api-portal/commit/6bec71adc1e8ed86a4b9d0a40ebb343f3c45480a))

### Fix

* fix: update deployment conditions and timestamps in environment configuration files ([`6fd83ca`](https://github.com/svange/api-portal/commit/6fd83ca8ea4144e5b98c3052878f6c0068a11593))

* fix: CloudFormation condition must be a string reference

- Create new UseDNSDelegation condition in Conditions section
- Reference it as a string in SubdomainDelegationRecords
- Fixes E3001 error: Condition property expects string, not inline expression
- This was preventing all deployments with &#39;Every Condition member must be a string&#39; error ([`f708f0e`](https://github.com/svange/api-portal/commit/f708f0e6062c2a61c03e848e30e8192874a7fd4a))

* fix: update deployment conditions and timestamps in environment configuration files ([`186e4c3`](https://github.com/svange/api-portal/commit/186e4c3a1481a61b244aecd523d2f9726e722711))

* fix: flatten nested CloudFormation conditions causing parse errors

- Fix UseCustomDomainName condition with nested \!And causing &#39;Every Condition member must be a string&#39;
- Remove extra space in NoCustomDomainName condition
- This was preventing both dev and prod deployments ([`6275678`](https://github.com/svange/api-portal/commit/6275678fd8f5c2eba537893c962915fd90aabe55))

* fix: update deployment conditions and timestamps in environment configuration files ([`8ba098a`](https://github.com/svange/api-portal/commit/8ba098a1416f78824c8dd54baa287cf84bae4d70))

* fix: correct CloudFormation condition syntax for SubdomainDelegationRecords

- Fix &#39;Every Condition member must be a string&#39; error
- Use proper inline \!And syntax with square brackets ([`929fbd9`](https://github.com/svange/api-portal/commit/929fbd9e109850c44402cbde3d6575b4061d6436))

* fix: change workflow to skip instead of fail when no env changes

- Exit successfully with deploy_dev=false and deploy_prod=false
- Prevents workflow failure when pushing non-environment changes
- Downstream jobs skip based on conditions
- Better user experience with informative messages ([`d74347d`](https://github.com/svange/api-portal/commit/d74347d432e382da3d77c34d7ef1e6d6961e25c7))

* fix: use GH_TOKEN from secrets for release job

- Update semantic-release to use secrets.GH_TOKEN instead of GITHUB_TOKEN
- Add GH_TOKEN to gh release create step
- Handle case where tag already exists by updating existing release
- This fixes the &#39;release id for tag not found&#39; error ([`77e9480`](https://github.com/svange/api-portal/commit/77e9480696ff3c7dcb74e5d535ea03e4fddae27a))


## v0.1.0 (2025-07-30)

### Chore

* chore(release): 0.1.0 [skip ci] ([`729b7f8`](https://github.com/svange/api-portal/commit/729b7f8571c5b17605c6a6a323e23fdaa2f3f65e))

* chore: update deployment trigger timestamps in dev and prod configuration files ([`9e21e31`](https://github.com/svange/api-portal/commit/9e21e31dbf364bbbd74fe9aa1efba9ebf660b1ba))

* chore: update deployment trigger timestamps in dev and prod configuration files ([`58c2f4f`](https://github.com/svange/api-portal/commit/58c2f4fed4dbdcac99df36a6ce9526d926a20802))

* chore: update deployment trigger timestamps in dev and prod configuration files ([`544db75`](https://github.com/svange/api-portal/commit/544db751348a88584717cd8fb952f5f8ae9b62bc))

* chore: update deployment trigger timestamps in dev and prod configuration files ([`392c076`](https://github.com/svange/api-portal/commit/392c0761ad0b8500d661dbaf1c1463115a7bb177))

* chore: update deployment permissions and add GitHub token for semantic release ([`2f4f667`](https://github.com/svange/api-portal/commit/2f4f667a81cdf2a7f3dfa2eab7b7e8e154553ac2))

* chore: update .gitignore and prod.yaml for deployment configuration ([`556a6d1`](https://github.com/svange/api-portal/commit/556a6d1eb0e3e62fe9fcf3b7eff5b54f2ec6a334))

* chore: trigger deployment after docs update ([`8cb0510`](https://github.com/svange/api-portal/commit/8cb0510dcde648b83e1f274ca54eec5d896e23dd))

* chore: trigger pipeline after repository reset ([`7961135`](https://github.com/svange/api-portal/commit/796113594320cbaeb881f104d2137901353fd4e2))

* chore: trigger pipeline with direct npm install ([`f4df8e1`](https://github.com/svange/api-portal/commit/f4df8e15d8999320628e853679390fa54a11d83a))

* chore: trigger pipeline with full legacy peer deps fix ([`0928e9e`](https://github.com/svange/api-portal/commit/0928e9e22e331b72893e54c6dae9b3b06c9e587f))

* chore: trigger pipeline with legacy peer deps fix ([`49c589e`](https://github.com/svange/api-portal/commit/49c589e7fa23744e664a142e7bde155ddc1887ac))

* chore: trigger pipeline with npm install fix ([`6a3fd40`](https://github.com/svange/api-portal/commit/6a3fd403c345357b3a127c4b66665cf3cb706c3d))

* chore: trigger pipeline with root deps fix ([`5d4ee51`](https://github.com/svange/api-portal/commit/5d4ee518854f38e5b5dfb4577160c4fe18e56a63))

* chore: trigger pipeline with npm ci --force fix ([`530a555`](https://github.com/svange/api-portal/commit/530a555cc88d17d447f0ea2a0683c7501ad7907b))

* chore: trigger pipeline with npm dependency fix ([`059b9a5`](https://github.com/svange/api-portal/commit/059b9a59f0ff88cddb27eea7bcab077a2d48f6e3))

* chore: trigger pipeline with fs-extra fix

Added comment to environment file to trigger deployment pipeline
with the fs-extra dependency fix. ([`06b1f95`](https://github.com/svange/api-portal/commit/06b1f950a0d3bb4f007af2492fe8b7287985ccc1))

* chore: audit dependencies, general clean-up

Run `npm audit fix` to update packages with known
high-impact vulnerabilities, address linting errors. ([`5330f9e`](https://github.com/svange/api-portal/commit/5330f9ed7e512b6332940343ea708c99f30a1cde))

### Documentation

* docs: add section on rebuild token architecture and safe update strategy ([`7ac504f`](https://github.com/svange/api-portal/commit/7ac504f5edf92b4f48546c0e995c28e59167dd89))

### Feature

* feat: implement matrix strategy for DRY dual environment deployment

- Use GitHub Actions matrix to deploy both dev and prod with single job definition
- Matrix includes conditional deployment based on changed files
- Remove duplicate deploy-prod job for DRY principle
- Parallel deployment when both environments change
- Individual step conditions to skip unnecessary matrix jobs ([`9bf36b7`](https://github.com/svange/api-portal/commit/9bf36b76b697b51b4156303d6a3e04b550df8b10))

* feat: update DNS configuration to use CloudFormation for automatic record creation ([`51ef6cf`](https://github.com/svange/api-portal/commit/51ef6cfc25c1bd21a0394bc5302b28bd76dc82bc))

* feat: trigger production deployment

- Add timestamp comment to prod.yaml to force workflow trigger
- Previous commit had too many file changes which may have overwhelmed path filters

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude &lt;noreply@anthropic.com&gt; ([`29ad7c3`](https://github.com/svange/api-portal/commit/29ad7c306c42f62bb451d6d51601adbf3d806471))

* feat: test incremental deployment with homepage tagline update

- Changed tagline from &#39;Your gateway to the data&#39; to &#39;Powered by Augmenting Integrations&#39;
- Bumped dev.yaml timestamp to trigger GitHub Actions deployment
- This is a safe test to verify incremental updates work properly ([`ad3fdbf`](https://github.com/svange/api-portal/commit/ad3fdbf65809cdbf841e8360bb42926ff73cdb1b))

* feat: trigger fresh stack deployment after destruction

- Updated CLAUDE.md with deployment process documentation
- Added critical information about deployment triggers via environments/*.yaml
- Bumped dev.yaml timestamp to initiate fresh stack creation
- Stack was previously destroyed, this will create all resources from scratch ([`7146bc7`](https://github.com/svange/api-portal/commit/7146bc7256d0a943cefd134b8a84bc75bfb6740d))

* feat: apply Augmenting Integrations branding to API portal

- Updated logo and favicon with AI branding
- Applied AI color scheme (blue gradient) and Lexend font
- Enhanced CSS with modern styling matching augmentingintegrations.com
- Updated content fragments with AI-focused messaging
- Changed page title to &#39;Augmenting Integrations API Portal&#39; ([`9531ce0`](https://github.com/svange/api-portal/commit/9531ce089a5a2b76352db226451688242599e5db))

* feat: enhance API portal deployment with improved DNS configuration and GitHub Actions integration ([`057bbfb`](https://github.com/svange/api-portal/commit/057bbfbc3f335093f842e5efd7c6dbc76fdb8050))

* feat: implement YAML-based deployment configuration with automatic DNS setup

- Replace GitHub Variables with YAML configuration files
- Add sam build step to pipeline (was missing, causing failures)
- Add CAPABILITY_AUTO_EXPAND to match local deployment
- Create local deployment script (deploy.py) for testing
- Add automatic DNS nameserver configuration in pipeline
- Configure custom domain (portal.aillc.link) with TLS
- Add Makefile commands for local deployment
- Remove .claude/settings.local.json from tracking

This eliminates the need for GitHub Secrets/Variables by using OIDC
authentication and YAML-based configuration. The pipeline now automatically
configures Route53 DNS when deploying with custom domains.

Closes #635 ([`7a1ec14`](https://github.com/svange/api-portal/commit/7a1ec140d9ffca29c94a4ad74aef50f161c1204f))

* feat: initial commit - set up API Portal with YAML-based deployment

- Add complete AWS API Gateway Developer Portal codebase
- Set up YAML-based deployment configuration (no secrets needed!)
- Configure GitHub Actions workflow with OIDC authentication
- Add dev environment with custom domain portal.aillc.link
- Add production environment template (disabled by default)
- Include branding assets and custom styling
- Add Makefile for easy local development
- Configure project documentation (CLAUDE.md)

This deployment system uses:
- YAML files for all configuration (environments/*.yaml)
- OIDC for secure AWS authentication (no credentials)
- File-based deployment triggers
- Custom domain and TLS support

Co-authored-by: Claude &lt;claude-assistant@anthropic.com&gt; ([`6fd48ba`](https://github.com/svange/api-portal/commit/6fd48badc29ed0ac5d55903ca89c72ce3ed8ed56))

* feat(getSdk): fix state changes for keys with dots ([`9c4c455`](https://github.com/svange/api-portal/commit/9c4c4557c4e6c5599eaa31fe2de779ed317e16a6))

* feat(getSdk): create custom dropdown component so FF stops breaking ([`6bf023d`](https://github.com/svange/api-portal/commit/6bf023d8b399b2e7e23110c850b514bad5f9545e))

* feat(Search): add API search feature ([`3845de8`](https://github.com/svange/api-portal/commit/3845de8fb539b81efdbfe1c3c9a02b5909cf1e38))

* feat(Search): add API search feature ([`28c2f0f`](https://github.com/svange/api-portal/commit/28c2f0fe887089c128aae5c7f7d3fef26c0f52df))

* feat(getSdk): fix validation not working and state being set correctly ([`cd1fb34`](https://github.com/svange/api-portal/commit/cd1fb34afd59c1eb8c40f01964dea9780147e8d3))

* feat(getSdk): add notifications to the dev portal

- add notification section
- add `addNotification` for the purporse of adding a notification
- notifications can be closed by clicking them
- notifications is now part of global state and don&#39;t get dismissed by moving pages ([`6ef436e`](https://github.com/svange/api-portal/commit/6ef436e8b226c8dcb8aeaf353f8913cddba1e981))

* feat(getSdk): convert file to datauri on the backend (b/c the the file gets mangled on the way to the frontend) ([`93daa90`](https://github.com/svange/api-portal/commit/93daa900ee4b4c63986c1bb46caa09366a4257ae))

* feat(getSdk): add datauri to the backend lambda function ([`26b768b`](https://github.com/svange/api-portal/commit/26b768b9d13a38a1d73f373fe6151b395fee5a6a))

* feat(getSdk): updates to download sdk button and data

- download sdk button now has a spinner
- download sdk button now only shows when the api can be downloaded
- changed sdkTypes to use the format returned from a `get-sdk-types` call ([`ca7f425`](https://github.com/svange/api-portal/commit/ca7f4256612b4b1d112da8552e03e44007c73e29))

* feat(getSdk): basic ui and layout for getSdk; minor backend changes ([`c5e414b`](https://github.com/svange/api-portal/commit/c5e414be2095d4f9ef2dc784bb72286f76743401))

* feat(Admin Panel): include generateSDK option

The admin panel&#39;s api gateway managed api table now includes a column
for enabling and disabling generateSDK for that api:stage. ([`bfb4680`](https://github.com/svange/api-portal/commit/bfb46807251ca7e6c02277bacc87c4cae2272285))

* feat(Admin Panel): include generic APIsAdd table for uploading + deleting Swagger docs forgeneric/non-API Gateway managed APIs. ([`a31deb7`](https://github.com/svange/api-portal/commit/a31deb7777e178579af0118049764fa767c5a49d))

* feat(Admin Panel): include generic APIs

Add table for uploading + deleting Swagger docs for
generic/non-API Gateway managed APIs. ([`4483d47`](https://github.com/svange/api-portal/commit/4483d47aa72b49d9ab81d294b546b8ce538e71fc))

* feat(Generic Swagger): Support generic Swagger specs not generated by
API Gateway in Dev Portal ([`d6ed4ea`](https://github.com/svange/api-portal/commit/d6ed4eae4a329293e0f45f18cf7a88a201265cb9))

### Fix

* fix: update deployment conditions and timestamps in environment configuration files ([`c67d562`](https://github.com/svange/api-portal/commit/c67d56230eea616db75deaf31c107f75c392f188))

* fix: only skip lines starting with # to preserve inline comments

- HostedZoneName parameter was being skipped due to inline comment
- Now only skips lines that start with # (after optional whitespace)
- Preserves parameter lines with inline comments ([`baecb8a`](https://github.com/svange/api-portal/commit/baecb8ae4ff8af85cb14ff0b28dd77bdcb3f7a5c))

* fix: refactor parameter parsing to handle comment lines properly

- Simplify parsing logic to read full lines first
- Skip any line containing # character
- Use -n instead of ! -z to avoid bash escaping issues
- Add debug output to show final parameters ([`ebb1e6b`](https://github.com/svange/api-portal/commit/ebb1e6be412c2c2d7a940761e44efb1771278085))

* fix: improve parameter parsing to handle comment lines correctly

- Update regex patterns to properly skip comment lines with leading spaces
- Fix bash syntax for regex negation
- Prevent &#39;# S3 Buckets&#39; from being treated as a parameter ([`e2277b3`](https://github.com/svange/api-portal/commit/e2277b3748de2b766216c54490487f44e9bcdd13))

* fix: update timestamp in dev.yaml for deployment configuration ([`ffb705d`](https://github.com/svange/api-portal/commit/ffb705d1512d4d77cc33cfbf1e618a96cb77bdf5))

* fix: resolve CSS conflicts breaking Sign In/Register links

- Made link styling more specific to avoid interfering with navigation
- Added specific rules for external links in navigation menu
- Ensured pointer events work properly for Cognito URLs ([`5333eb7`](https://github.com/svange/api-portal/commit/5333eb71e34bdedae9ae5949ed5f218e460aab88))

* fix: update timestamp in dev.yaml for deployment configuration ([`0fa2b34`](https://github.com/svange/api-portal/commit/0fa2b3417ec2cb99a53c81735e649ce372359e15))

* fix: update timestamp in dev.yaml for deployment configuration ([`0aa44c9`](https://github.com/svange/api-portal/commit/0aa44c9392c5a4d5ad1a8fe2df64424b3cfb7698))

* fix: remove duplicate workflow file to prevent double runs ([`357c7f2`](https://github.com/svange/api-portal/commit/357c7f2a6b86eef91f860e66f129ddfb0e294608))

* fix: update timestamp in dev.yaml for deployment configuration ([`7ea9a1d`](https://github.com/svange/api-portal/commit/7ea9a1da55cb5dbb8c8bcac7d32b15383357a77a))

* fix: update timestamp in dev.yaml for deployment configuration ([`d50a49b`](https://github.com/svange/api-portal/commit/d50a49ba9b0358f7e62f66ae0ec2dc2e89406940))

* fix: improve role extraction in deployment configuration and add debug output ([`232cc4e`](https://github.com/svange/api-portal/commit/232cc4e255ed5ff44dd04ab80b93238018597543))

* fix: enable path restriction for environment YAML files in deployment trigger ([`c03df38`](https://github.com/svange/api-portal/commit/c03df388b4a66222d90478136eba330b94441cf4))

* fix: remove path restriction for environment YAML files in deployment trigger ([`b4450fe`](https://github.com/svange/api-portal/commit/b4450fed88f24a83803e1920a869b9716060453a))

* fix: update permissions in deployment configuration and ignore local settings ([`ed03a30`](https://github.com/svange/api-portal/commit/ed03a3071339dec70172e06cf4ff0b9a2bb22e0c))

* fix: revert AWS portal files to upstream state, preserve custom additions ([`4f31562`](https://github.com/svange/api-portal/commit/4f315625da56e235c9483dfbb7058023b7275de2))

* fix: properly simplify pipeline to skip npm install and build

Remove Node.js setup, npm install, and frontend build steps.
SAM handles all Lambda dependency installation and the React app
is already built and committed. This matches the successful local deployment. ([`6c0fd5e`](https://github.com/svange/api-portal/commit/6c0fd5e4edc89786054b34c99652126d44375aed))

* fix: install dependencies directly in each directory

The node run install script may not be working correctly in CI.
Installing dependencies directly in each directory ensures all
packages are properly installed with the --legacy-peer-deps flag. ([`414c038`](https://github.com/svange/api-portal/commit/414c038cd34f79ef186111d01e23e7d83bfd1cf6))

* fix: pass --legacy-peer-deps to node run install

The install script runs npm install in each subdirectory, which also
needs the --legacy-peer-deps flag to handle peer dependency conflicts. ([`aec7f01`](https://github.com/svange/api-portal/commit/aec7f011293c4c9d68cb32eb411684a821e585eb))

* fix: use --legacy-peer-deps for npm install

The project has conflicting peer dependencies (eslint@6 vs eslint-plugin-flowtype
requiring eslint@7). Using --legacy-peer-deps allows npm to use the v6 resolution
algorithm which is more permissive for older projects. ([`5391ac3`](https://github.com/svange/api-portal/commit/5391ac3831dd290dfb9d2423dc7cf24b7fbc9f44))

* fix: use npm install instead of ci due to lockfile sync issues

The lockfile is out of sync with package.json (missing typescript).
Using npm install temporarily until lockfile can be properly regenerated. ([`ad0e39a`](https://github.com/svange/api-portal/commit/ad0e39aef58e0b7955208596a23f3e8af74b6505))

* fix: use npm ci --force for root dependencies

The project has peer dependency conflicts that need --force flag.
This ensures run.js has fs-extra available before executing. ([`9ac5cda`](https://github.com/svange/api-portal/commit/9ac5cda483af74ec1bb490c3556543df0fe1d7d0))

* fix: use npm ci --force to handle peer dependency conflicts

The project has a known peer dependency conflict between eslint@6.8.0
and eslint-plugin-flowtype@5.10.0. Using --force flag allows npm ci
to proceed while maintaining lockfile integrity for CI/CD reproducibility. ([`09b5814`](https://github.com/svange/api-portal/commit/09b5814d393c1275c14d6bc37b95c6f1c15e2a40))

* fix: use npm install to handle dependency resolution

Replace npm ci with npm install to match local development workflow.
This avoids strict peer dependency conflicts and handles the lockfile
version differences between local and CI environments. ([`36e82c7`](https://github.com/svange/api-portal/commit/36e82c77fb2c318ce9154ac57cb473c71477c90c))

* fix: install root dependencies before running node scripts in pipeline

The run.js script requires fs-extra, which needs to be installed before
the script can execute. Added npm ci to install root dependencies first. ([`1f00c71`](https://github.com/svange/api-portal/commit/1f00c71795b8d52af09f3dd484831f785c9c199d))

* fix(Admin Panel): Fix generic table

Hide managed APIs from the generic table. ([`613eed5`](https://github.com/svange/api-portal/commit/613eed538bd28b1e086bca7634e2e5932f919dba))

* fix: Fix LogOut URL in cfn template ([`e54de5f`](https://github.com/svange/api-portal/commit/e54de5f26b247f68a394e907c4bbb3b4fd13854e))

* fix(Admin Panel): allow for non-subscribable APIs ([`af53fc1`](https://github.com/svange/api-portal/commit/af53fc17da7dfd2b2df7eba2061ca56115cbf13a))

* fix(scripts): add s3 bucket

`sam deploy` command in dev-portal/scripts/deploy-stack.js
was failing due to missing parameter &#39;--s3-bucket&#39; ([`aa4b004`](https://github.com/svange/api-portal/commit/aa4b004df003e7d144a4f489d633102314352c76))

* fix(custom images): state.js

`fetchApiImage` should (currently) only look for images for API Gateway-managed API and ignore generic APIs. ([`9d14373`](https://github.com/svange/api-portal/commit/9d14373b5f1a6b7e07432be4412f9cf1d5f074f3))

### Unknown

* revert: restore original AWS Developer Portal styling and content

- Reverted styles.css to original empty template
- Restored original content fragments (Home, Getting Started, APIs)
- Changed page title back to &#39;Developer Portal&#39;
- This should fix the Sign In/Register link issues ([`6e5fb22`](https://github.com/svange/api-portal/commit/6e5fb226a594f7851af8b13fff454badc5b477c2))

* Bump @babel/traverse from 7.18.13 to 7.23.2 in /dev-portal (#633)

Bumps [@babel/traverse](https://github.com/babel/babel/tree/HEAD/packages/babel-traverse) from 7.18.13 to 7.23.2.
- [Release notes](https://github.com/babel/babel/releases)
- [Changelog](https://github.com/babel/babel/blob/main/CHANGELOG.md)
- [Commits](https://github.com/babel/babel/commits/v7.23.2/packages/babel-traverse)

---
updated-dependencies:
- dependency-name: &#34;@babel/traverse&#34;
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`1034786`](https://github.com/svange/api-portal/commit/103478688666e401fb14384c0420463b5afc6087))

* Bump @babel/traverse from 7.9.0 to 7.23.2 (#634)

Bumps [@babel/traverse](https://github.com/babel/babel/tree/HEAD/packages/babel-traverse) from 7.9.0 to 7.23.2.
- [Release notes](https://github.com/babel/babel/releases)
- [Changelog](https://github.com/babel/babel/blob/main/CHANGELOG.md)
- [Commits](https://github.com/babel/babel/commits/v7.23.2/packages/babel-traverse)

---
updated-dependencies:
- dependency-name: &#34;@babel/traverse&#34;
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`b4776b7`](https://github.com/svange/api-portal/commit/b4776b7e30f5138d5924768db69140629bf33576))

* Bump xml2js and aws-sdk (#617)

Bumps [xml2js](https://github.com/Leonidas-from-XIV/node-xml2js) to 0.5.0 and updates ancestor dependency [aws-sdk](https://github.com/aws/aws-sdk-js). These dependencies need to be updated together.


Updates `xml2js` from 0.4.19 to 0.5.0
- [Release notes](https://github.com/Leonidas-from-XIV/node-xml2js/releases)
- [Commits](https://github.com/Leonidas-from-XIV/node-xml2js/compare/0.4.19...0.5.0)

Updates `aws-sdk` from 2.814.0 to 2.1354.0
- [Release notes](https://github.com/aws/aws-sdk-js/releases)
- [Changelog](https://github.com/aws/aws-sdk-js/blob/master/CHANGELOG.md)
- [Commits](https://github.com/aws/aws-sdk-js/compare/v2.814.0...v2.1354.0)

---
updated-dependencies:
- dependency-name: xml2js
  dependency-type: indirect
- dependency-name: aws-sdk
  dependency-type: direct:development
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`9f0715c`](https://github.com/svange/api-portal/commit/9f0715cb35da2c000550882b2825ae3adc716d82))

* Bump webpack from 5.74.0 to 5.76.1 in /dev-portal (#614)

Bumps [webpack](https://github.com/webpack/webpack) from 5.74.0 to 5.76.1.
- [Release notes](https://github.com/webpack/webpack/releases)
- [Commits](https://github.com/webpack/webpack/compare/v5.74.0...v5.76.1)

---
updated-dependencies:
- dependency-name: webpack
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`ea08541`](https://github.com/svange/api-portal/commit/ea08541207dd3be9ae3b93b79b817eff716efaab))

* Bump json5 from 1.0.1 to 1.0.2 (#608)

Bumps [json5](https://github.com/json5/json5) from 1.0.1 to 1.0.2.
- [Release notes](https://github.com/json5/json5/releases)
- [Changelog](https://github.com/json5/json5/blob/main/CHANGELOG.md)
- [Commits](https://github.com/json5/json5/compare/v1.0.1...v1.0.2)

---
updated-dependencies:
- dependency-name: json5
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`47f035d`](https://github.com/svange/api-portal/commit/47f035dfbdbb2376fe24f32620b8b6a10de9fbbd))

* Bump json5 from 1.0.1 to 1.0.2 in /dev-portal (#609)

Bumps [json5](https://github.com/json5/json5) from 1.0.1 to 1.0.2.
- [Release notes](https://github.com/json5/json5/releases)
- [Changelog](https://github.com/json5/json5/blob/main/CHANGELOG.md)
- [Commits](https://github.com/json5/json5/compare/v1.0.1...v1.0.2)

---
updated-dependencies:
- dependency-name: json5
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`3b2b9da`](https://github.com/svange/api-portal/commit/3b2b9dac81d8f6dcc5baf7c98fd7d301feb4edd4))

* Adding maintenance mode to readme (#601) ([`6cc95b7`](https://github.com/svange/api-portal/commit/6cc95b70d6cf7261850094b0cca8838ac0152bf4))

* Bump qs, body-parser and express in /lambdas/backend (#605)

Bumps [qs](https://github.com/ljharb/qs) to 6.11.0 and updates ancestor dependencies [qs](https://github.com/ljharb/qs), [body-parser](https://github.com/expressjs/body-parser) and [express](https://github.com/expressjs/express). These dependencies need to be updated together.


Updates `qs` from 6.7.0 to 6.11.0
- [Release notes](https://github.com/ljharb/qs/releases)
- [Changelog](https://github.com/ljharb/qs/blob/main/CHANGELOG.md)
- [Commits](https://github.com/ljharb/qs/compare/v6.7.0...v6.11.0)

Updates `body-parser` from 1.19.0 to 1.20.1
- [Release notes](https://github.com/expressjs/body-parser/releases)
- [Changelog](https://github.com/expressjs/body-parser/blob/master/HISTORY.md)
- [Commits](https://github.com/expressjs/body-parser/compare/1.19.0...1.20.1)

Updates `express` from 4.17.1 to 4.18.2
- [Release notes](https://github.com/expressjs/express/releases)
- [Changelog](https://github.com/expressjs/express/blob/master/History.md)
- [Commits](https://github.com/expressjs/express/compare/4.17.1...4.18.2)

---
updated-dependencies:
- dependency-name: qs
  dependency-type: indirect
- dependency-name: body-parser
  dependency-type: direct:production
- dependency-name: express
  dependency-type: direct:production
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`f2c4201`](https://github.com/svange/api-portal/commit/f2c4201b89bda46363017759dcd1d07110d3b167))

* Bump decode-uri-component from 0.2.0 to 0.2.2 in /dev-portal (#606)

Bumps [decode-uri-component](https://github.com/SamVerschueren/decode-uri-component) from 0.2.0 to 0.2.2.
- [Release notes](https://github.com/SamVerschueren/decode-uri-component/releases)
- [Commits](https://github.com/SamVerschueren/decode-uri-component/compare/v0.2.0...v0.2.2)

---
updated-dependencies:
- dependency-name: decode-uri-component
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`f66f479`](https://github.com/svange/api-portal/commit/f66f479c25cdaab37da159be8b8dd496737245e2))

* Bump decode-uri-component from 0.2.0 to 0.2.2 (#604)

Bumps [decode-uri-component](https://github.com/SamVerschueren/decode-uri-component) from 0.2.0 to 0.2.2.
- [Release notes](https://github.com/SamVerschueren/decode-uri-component/releases)
- [Commits](https://github.com/SamVerschueren/decode-uri-component/compare/v0.2.0...v0.2.2)

---
updated-dependencies:
- dependency-name: decode-uri-component
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`c3a8e47`](https://github.com/svange/api-portal/commit/c3a8e4775c852dd227b9be4a60af7eb63720d73b))

* Bump qs from 6.5.2 to 6.5.3 (#603)

Bumps [qs](https://github.com/ljharb/qs) from 6.5.2 to 6.5.3.
- [Release notes](https://github.com/ljharb/qs/releases)
- [Changelog](https://github.com/ljharb/qs/blob/main/CHANGELOG.md)
- [Commits](https://github.com/ljharb/qs/compare/v6.5.2...v6.5.3)

---
updated-dependencies:
- dependency-name: qs
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`266432b`](https://github.com/svange/api-portal/commit/266432ba59d9cc114285055bcdb52f7c256bbd6e))

* Bump loader-utils from 2.0.2 to 2.0.4 in /dev-portal (#595)

Bumps [loader-utils](https://github.com/webpack/loader-utils) from 2.0.2 to 2.0.4.
- [Release notes](https://github.com/webpack/loader-utils/releases)
- [Changelog](https://github.com/webpack/loader-utils/blob/v2.0.4/CHANGELOG.md)
- [Commits](https://github.com/webpack/loader-utils/compare/v2.0.2...v2.0.4)

---
updated-dependencies:
- dependency-name: loader-utils
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;
Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`d9aa68b`](https://github.com/svange/api-portal/commit/d9aa68b056219f3aa570f1fe2b5515cf0f714ae4))

* Fixing default static files (#596) ([`767fc8a`](https://github.com/svange/api-portal/commit/767fc8aecc59e96262fcc42354af3bf4e97cac7f))

* Adding back static files (#587) ([`a7ae1c5`](https://github.com/svange/api-portal/commit/a7ae1c5aaa043e7509af5888264b9c47ef99ce22))

* Add shell to spawn to support windows (#585) ([`7e26feb`](https://github.com/svange/api-portal/commit/7e26feb9a83a14fde8be30dd970d9e00f6a33908))

* Fix build issues and upgrade template node version to 16 (#584)

* Fix build issues
* Upgrade to Node16 and fix swagger issue ([`c485c27`](https://github.com/svange/api-portal/commit/c485c274aa892104b44db8acd57e37b21baaf77d))

* Update CODEOWNERS ([`4eddd4c`](https://github.com/svange/api-portal/commit/4eddd4cd74bb196d69a07ae981f6b0de90ee6298))

* Update CODEOWNERS ([`5f40594`](https://github.com/svange/api-portal/commit/5f40594d6324c33b13076f3c2eccfaf023479f7e))

* Update CODEOWNERS ([`111120e`](https://github.com/svange/api-portal/commit/111120e8bb6d852b407c385f76a52436e7c1f776))

* Update CODEOWNERS ([`fd5b3d6`](https://github.com/svange/api-portal/commit/fd5b3d6b82d7852dc96715dd3a37360d1a9a61e3))

* Merge pull request #578 from awslabs/dependabot/npm_and_yarn/dev-portal/ejs-3.1.8

Bump ejs from 3.1.6 to 3.1.8 in /dev-portal ([`4c1a360`](https://github.com/svange/api-portal/commit/4c1a36064ce6928401d846e55ba3c6d706730e58))

* Merge pull request #577 from awslabs/dependabot/npm_and_yarn/dev-portal/moment-2.29.4

Bump moment from 2.29.2 to 2.29.4 in /dev-portal ([`c55f7e9`](https://github.com/svange/api-portal/commit/c55f7e9f55ce1344bd8bccd2ffd9173a32acbe96))

* Bump ejs from 3.1.6 to 3.1.8 in /dev-portal

Bumps [ejs](https://github.com/mde/ejs) from 3.1.6 to 3.1.8.
- [Release notes](https://github.com/mde/ejs/releases)
- [Changelog](https://github.com/mde/ejs/blob/main/CHANGELOG.md)
- [Commits](https://github.com/mde/ejs/compare/v3.1.6...v3.1.8)

---
updated-dependencies:
- dependency-name: ejs
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`a71a551`](https://github.com/svange/api-portal/commit/a71a551e3f505ce024914ac52b13c3e7c97af89a))

* Bump moment from 2.29.2 to 2.29.4 in /dev-portal

Bumps [moment](https://github.com/moment/moment) from 2.29.2 to 2.29.4.
- [Release notes](https://github.com/moment/moment/releases)
- [Changelog](https://github.com/moment/moment/blob/develop/CHANGELOG.md)
- [Commits](https://github.com/moment/moment/compare/2.29.2...2.29.4)

---
updated-dependencies:
- dependency-name: moment
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`119b1fa`](https://github.com/svange/api-portal/commit/119b1fa3fec490000d94110be72a1b99184b0065))

* Merge pull request #576 from awslabs/dependabot/npm_and_yarn/dev-portal/terser-5.14.2

Bump terser from 5.12.1 to 5.14.2 in /dev-portal ([`2db2136`](https://github.com/svange/api-portal/commit/2db2136496c79ed09b7aee9dd8b31eff9571c866))

* Merge pull request #565 from awslabs/dependabot/npm_and_yarn/lambdas/cloudfront-security/async-2.6.4

Bump async from 2.6.3 to 2.6.4 in /lambdas/cloudfront-security ([`8d895ea`](https://github.com/svange/api-portal/commit/8d895eab69f03351dab86fef54ff9be77cd3fbe9))

* Bump terser from 5.12.1 to 5.14.2 in /dev-portal

Bumps [terser](https://github.com/terser/terser) from 5.12.1 to 5.14.2.
- [Release notes](https://github.com/terser/terser/releases)
- [Changelog](https://github.com/terser/terser/blob/master/CHANGELOG.md)
- [Commits](https://github.com/terser/terser/commits)

---
updated-dependencies:
- dependency-name: terser
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`3694e49`](https://github.com/svange/api-portal/commit/3694e49d93487bac880095870c84ea777b3714bc))

* Bump async from 2.6.3 to 2.6.4 in /lambdas/cloudfront-security

Bumps [async](https://github.com/caolan/async) from 2.6.3 to 2.6.4.
- [Release notes](https://github.com/caolan/async/releases)
- [Changelog](https://github.com/caolan/async/blob/v2.6.4/CHANGELOG.md)
- [Commits](https://github.com/caolan/async/compare/v2.6.3...v2.6.4)

---
updated-dependencies:
- dependency-name: async
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`f8a0811`](https://github.com/svange/api-portal/commit/f8a0811c0ae854b79ffb9e35d6a70844420d691c))

* Merge pull request #561 from awslabs/dependabot/npm_and_yarn/dev-portal/moment-2.29.2

Bump moment from 2.29.1 to 2.29.2 in /dev-portal ([`996cfd1`](https://github.com/svange/api-portal/commit/996cfd18c6df64ce84fbcda1cba2744f14290d5e))

* Merge pull request #559 from aasthavar/patch-1

Add right home screen image link ([`1b0efaf`](https://github.com/svange/api-portal/commit/1b0efaf8799e264a31fe6b8756274cd8af5ad726))

* Bump moment from 2.29.1 to 2.29.2 in /dev-portal

Bumps [moment](https://github.com/moment/moment) from 2.29.1 to 2.29.2.
- [Release notes](https://github.com/moment/moment/releases)
- [Changelog](https://github.com/moment/moment/blob/develop/CHANGELOG.md)
- [Commits](https://github.com/moment/moment/compare/2.29.1...2.29.2)

---
updated-dependencies:
- dependency-name: moment
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`bab0035`](https://github.com/svange/api-portal/commit/bab0035fecb5a4f7bd00d20a11c9f0d59c63a6e1))

* Add right home screen image link ([`cdd8b25`](https://github.com/svange/api-portal/commit/cdd8b256eb09fd60f49d126320c588fdf355be6d))

* Bump ansi-regex from 4.1.0 to 4.1.1 in /dev-portal (#557)

Bumps [ansi-regex](https://github.com/chalk/ansi-regex) from 4.1.0 to 4.1.1.
- [Release notes](https://github.com/chalk/ansi-regex/releases)
- [Commits](https://github.com/chalk/ansi-regex/compare/v4.1.0...v4.1.1)

---
updated-dependencies:
- dependency-name: ansi-regex
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`50c0bec`](https://github.com/svange/api-portal/commit/50c0becb519a6c549bd20eb76d13cddaf86fd0d0))

* Pick up latest security fix in forked swagger-ui branch (#556) ([`cb49d56`](https://github.com/svange/api-portal/commit/cb49d56979bcf58b37c953907f1d7c58a4fb0cbd))

* Bump ansi-regex from 4.1.0 to 4.1.1 (#554)

Bumps [ansi-regex](https://github.com/chalk/ansi-regex) from 4.1.0 to 4.1.1.
- [Release notes](https://github.com/chalk/ansi-regex/releases)
- [Commits](https://github.com/chalk/ansi-regex/compare/v4.1.0...v4.1.1)

---
updated-dependencies:
- dependency-name: ansi-regex
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`21376d6`](https://github.com/svange/api-portal/commit/21376d6373697f09e46a7855a083f743dd6edf53))

* Bump ansi-regex from 4.1.0 to 4.1.1 in /dev-portal (#555)

Bumps [ansi-regex](https://github.com/chalk/ansi-regex) from 4.1.0 to 4.1.1.
- [Release notes](https://github.com/chalk/ansi-regex/releases)
- [Commits](https://github.com/chalk/ansi-regex/compare/v4.1.0...v4.1.1)

---
updated-dependencies:
- dependency-name: ansi-regex
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`3ce14b0`](https://github.com/svange/api-portal/commit/3ce14b02045dcc441ea87b3cabfb849f0c803fc1))

* Update react-script to pull in newer version of node-forge to fix security related issues (#552)

Co-authored-by: Michael Hu &lt;huamich@amazon.com&gt; ([`215c493`](https://github.com/svange/api-portal/commit/215c4935fe672bef89b5458bd41f69087cde27fb))

* Bump follow-redirects from 1.14.7 to 1.14.9 in /dev-portal (#551)

Bumps [follow-redirects](https://github.com/follow-redirects/follow-redirects) from 1.14.7 to 1.14.9.
- [Release notes](https://github.com/follow-redirects/follow-redirects/releases)
- [Commits](https://github.com/follow-redirects/follow-redirects/compare/v1.14.7...v1.14.9)

---
updated-dependencies:
- dependency-name: follow-redirects
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`5326479`](https://github.com/svange/api-portal/commit/5326479d9f81c418ef15c9379bb62c10e01e1e47))

* Bump node-fetch from 2.6.1 to 2.6.7 (#545)

Bumps [node-fetch](https://github.com/node-fetch/node-fetch) from 2.6.1 to 2.6.7.
- [Release notes](https://github.com/node-fetch/node-fetch/releases)
- [Commits](https://github.com/node-fetch/node-fetch/compare/v2.6.1...v2.6.7)

---
updated-dependencies:
- dependency-name: node-fetch
  dependency-type: direct:development
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`7fd5327`](https://github.com/svange/api-portal/commit/7fd5327cc39a9a4e3fd4e23422f2ec244ee15ca2))

* Bump minimist from 1.2.5 to 1.2.6 in /dev-portal (#550)

Bumps [minimist](https://github.com/substack/minimist) from 1.2.5 to 1.2.6.
- [Release notes](https://github.com/substack/minimist/releases)
- [Commits](https://github.com/substack/minimist/compare/1.2.5...1.2.6)

---
updated-dependencies:
- dependency-name: minimist
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`01073b0`](https://github.com/svange/api-portal/commit/01073b04bce2f40296f3b1848ad41ed61ca8dd99))

* Bump minimist from 1.2.5 to 1.2.6 (#549)

Bumps [minimist](https://github.com/substack/minimist) from 1.2.5 to 1.2.6.
- [Release notes](https://github.com/substack/minimist/releases)
- [Commits](https://github.com/substack/minimist/compare/1.2.5...1.2.6)

---
updated-dependencies:
- dependency-name: minimist
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`99cad72`](https://github.com/svange/api-portal/commit/99cad72ab004ecaff9890d2db7609513f1fc4f7e))

* Bump nanoid from 3.1.23 to 3.3.1 in /dev-portal (#548)

Bumps [nanoid](https://github.com/ai/nanoid) from 3.1.23 to 3.3.1.
- [Release notes](https://github.com/ai/nanoid/releases)
- [Changelog](https://github.com/ai/nanoid/blob/main/CHANGELOG.md)
- [Commits](https://github.com/ai/nanoid/compare/3.1.23...3.3.1)

---
updated-dependencies:
- dependency-name: nanoid
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`2199a8a`](https://github.com/svange/api-portal/commit/2199a8a775bd0da0b0e3346b56b8451ce4138b50))

* Bump ajv from 6.12.0 to 6.12.6 (#536)

Bumps [ajv](https://github.com/ajv-validator/ajv) from 6.12.0 to 6.12.6.
- [Release notes](https://github.com/ajv-validator/ajv/releases)
- [Commits](https://github.com/ajv-validator/ajv/compare/v6.12.0...v6.12.6)

---
updated-dependencies:
- dependency-name: ajv
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`f9565d9`](https://github.com/svange/api-portal/commit/f9565d92dd8404c35dc6fa9d1e1694b3d4b63958))

* Bump ssri from 6.0.1 to 6.0.2 in /dev-portal (#547)

Bumps [ssri](https://github.com/npm/ssri) from 6.0.1 to 6.0.2.
- [Release notes](https://github.com/npm/ssri/releases)
- [Changelog](https://github.com/npm/ssri/blob/v6.0.2/CHANGELOG.md)
- [Commits](https://github.com/npm/ssri/compare/v6.0.1...v6.0.2)

---
updated-dependencies:
- dependency-name: ssri
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`edbef67`](https://github.com/svange/api-portal/commit/edbef673b1f28ed575b13a03f5d0b087c3d1a3ea))

* Bump node-fetch from 2.6.1 to 2.6.7 in /dev-portal (#546)

Bumps [node-fetch](https://github.com/node-fetch/node-fetch) from 2.6.1 to 2.6.7.
- [Release notes](https://github.com/node-fetch/node-fetch/releases)
- [Commits](https://github.com/node-fetch/node-fetch/compare/v2.6.1...v2.6.7)

---
updated-dependencies:
- dependency-name: node-fetch
  dependency-type: direct:development
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt; ([`25da560`](https://github.com/svange/api-portal/commit/25da560bc2cffb3aefdb4f94cef31b614e205669))

* Bump url-parse from 1.5.3 to 1.5.10 in /dev-portal (#541)

Bumps [url-parse](https://github.com/unshiftio/url-parse) from 1.5.3 to 1.5.10.
- [Release notes](https://github.com/unshiftio/url-parse/releases)
- [Commits](https://github.com/unshiftio/url-parse/compare/1.5.3...1.5.10)

---
updated-dependencies:
- dependency-name: url-parse
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt;

Co-authored-by: dependabot[bot] &lt;49699333+dependabot[bot]@users.noreply.github.com&gt;
Co-authored-by: DroolingPanda &lt;83742398+DroolingPanda@users.noreply.github.com&gt; ([`a2e4529`](https://github.com/svange/api-portal/commit/a2e452971088c7bb51cb52ed0447ed369d6dcfbd))

* Update CODEOWNERS ([`98b789c`](https://github.com/svange/api-portal/commit/98b789c0985228886a133fc235624b0182be7c45))

* Update CODEOWNERS ([`3f506b4`](https://github.com/svange/api-portal/commit/3f506b48df4bafec80f635aa3f33cf04eaf5ae9f))

* Merge pull request #527 from awslabs/dependabot/npm_and_yarn/dev-portal/follow-redirects-1.14.7

Bump follow-redirects from 1.13.3 to 1.14.7 in /dev-portal ([`42cede4`](https://github.com/svange/api-portal/commit/42cede4918f4980a969b4a258cf8e8db9bd96450))

* Merge pull request #525 from awslabs/dependabot/npm_and_yarn/dev-portal/marked-4.0.10

Bump marked from 2.0.4 to 4.0.10 in /dev-portal ([`ede7e11`](https://github.com/svange/api-portal/commit/ede7e11ce0a64d4f0f5267985c6bdbdedd129530))

* Bump marked from 2.0.4 to 4.0.10 in /dev-portal

Bumps [marked](https://github.com/markedjs/marked) from 2.0.4 to 4.0.10.
- [Release notes](https://github.com/markedjs/marked/releases)
- [Changelog](https://github.com/markedjs/marked/blob/master/.releaserc.json)
- [Commits](https://github.com/markedjs/marked/compare/v2.0.4...v4.0.10)

---
updated-dependencies:
- dependency-name: marked
  dependency-type: direct:production
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`802d32f`](https://github.com/svange/api-portal/commit/802d32f757b82d71407e8f1b10d1fa2cc84ecbcd))

* Bump follow-redirects from 1.13.3 to 1.14.7 in /dev-portal

Bumps [follow-redirects](https://github.com/follow-redirects/follow-redirects) from 1.13.3 to 1.14.7.
- [Release notes](https://github.com/follow-redirects/follow-redirects/releases)
- [Commits](https://github.com/follow-redirects/follow-redirects/compare/v1.13.3...v1.14.7)

---
updated-dependencies:
- dependency-name: follow-redirects
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`81da1c2`](https://github.com/svange/api-portal/commit/81da1c2007f229e3457aa227744c929faaca9442))

* v4.1.1 ([`3e10f5e`](https://github.com/svange/api-portal/commit/3e10f5e824bc5682919548c3f0a5790f45772b1f))

* Merge pull request #520 from awslabs/issue-519

Fix Issue 519 ([`4dd0dee`](https://github.com/svange/api-portal/commit/4dd0dee051fdaaf44d59e44955ab76da70aa7e0d))

* Reverting alignment noise lambdas/cloudfront-security/replicator.js

Co-authored-by: amazon-meaisiah &lt;meaisiah@amazon.com&gt; ([`c63c433`](https://github.com/svange/api-portal/commit/c63c433817b93a3ca391345af8e80e7b0f5853bd))

* Adding waiter for Lambda Function steps ([`56a75e4`](https://github.com/svange/api-portal/commit/56a75e44aa5fd9d566422e726daa0bf884a5dd3f))

* Merge pull request #518 from awslabs/dependabot/npm_and_yarn/aws-sdk-2.814.0

Bump aws-sdk from 2.656.0 to 2.814.0 ([`9737f23`](https://github.com/svange/api-portal/commit/9737f231102c56fbd6916ff3c5c31855e7efe978))

* Bump aws-sdk from 2.656.0 to 2.814.0

Bumps [aws-sdk](https://github.com/aws/aws-sdk-js) from 2.656.0 to 2.814.0.
- [Release notes](https://github.com/aws/aws-sdk-js/releases)
- [Changelog](https://github.com/aws/aws-sdk-js/blob/master/CHANGELOG.md)
- [Commits](https://github.com/aws/aws-sdk-js/compare/v2.656.0...v2.814.0)

---
updated-dependencies:
- dependency-name: aws-sdk
  dependency-type: direct:development
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`faf1297`](https://github.com/svange/api-portal/commit/faf1297d2b55db282e9d6f9d26e1ba30b598c286))

* Merge pull request #516 from awslabs/bucket-sniping-fix

Backend fix ([`cd1ea94`](https://github.com/svange/api-portal/commit/cd1ea9451d4ed1cfbe6719f26f7f941f6a8285e9))

* Merge branch &#39;master&#39; into bucket-sniping-fix ([`031ccd6`](https://github.com/svange/api-portal/commit/031ccd6f9975350cc94dfc78112779335b7149b4))

* fix typo ([`d7099e4`](https://github.com/svange/api-portal/commit/d7099e489da65852ce925e51d4b3692f2faf8f60))

* add @philcaixeta ([`f80441e`](https://github.com/svange/api-portal/commit/f80441ec4c1e42fc7afaf97e8c41a6986176d994))

* Bucket Sniping Fix ([`eb55b8c`](https://github.com/svange/api-portal/commit/eb55b8c5cd6290f9b5a28a0007f53a72fe2bd305))

* Merge pull request #514 from awslabs/build-node-16

Make Dev Portal Build on Node 16 ([`0660aa5`](https://github.com/svange/api-portal/commit/0660aa5d2af280fb12b8ddb38d829ab10a4bd5f9))

* Update travis to run node 16 ([`6860f60`](https://github.com/svange/api-portal/commit/6860f60dcd599841922178ab7374dd7b089fc94b))

* Make Dev Portal Build on Node 16 ([`6a6ba77`](https://github.com/svange/api-portal/commit/6a6ba77ee438e7341ff387a907989482b52b52bf))

* Merge pull request #512 from awslabs/x-xss-protection-issue

Correct X-XSS-Protection header value in dev portal ([`3067d03`](https://github.com/svange/api-portal/commit/3067d030a2ccaff7e12c87be800ab766b2c98a4c))

* Correct X-XSS-Protection header value in dev portal ([`80c1ebf`](https://github.com/svange/api-portal/commit/80c1ebffd68a2c0648e99be62a815368913629a4))

* Bump tmpl from 1.0.4 to 1.0.5

Bumps [tmpl](https://github.com/daaku/nodejs-tmpl) from 1.0.4 to 1.0.5.
- [Release notes](https://github.com/daaku/nodejs-tmpl/releases)
- [Commits](https://github.com/daaku/nodejs-tmpl/commits/v1.0.5)

---
updated-dependencies:
- dependency-name: tmpl
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`19daa51`](https://github.com/svange/api-portal/commit/19daa51e68f360d655225ad281a014729bde0bd5))

* Bump tmpl from 1.0.4 to 1.0.5 in /dev-portal

Bumps [tmpl](https://github.com/daaku/nodejs-tmpl) from 1.0.4 to 1.0.5.
- [Release notes](https://github.com/daaku/nodejs-tmpl/releases)
- [Commits](https://github.com/daaku/nodejs-tmpl/commits/v1.0.5)

---
updated-dependencies:
- dependency-name: tmpl
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`f3ccd06`](https://github.com/svange/api-portal/commit/f3ccd067940964f5a0450152f0e1de2e6daed05d))

* Add new `region` key to allow deploying to alternate regions explicitly ([`5e0d189`](https://github.com/svange/api-portal/commit/5e0d189f949d743107320a2c280762da983282cb))

* Update CODEOWNERS ([`ece3c43`](https://github.com/svange/api-portal/commit/ece3c43403d06fef93c1831352c3e1d932e51f1e))

* Update CODEOWNERS ([`0af0501`](https://github.com/svange/api-portal/commit/0af0501a8ab3efb3ade93abc1c854ab846e93196))

* Update CODEOWNERS ([`b55652e`](https://github.com/svange/api-portal/commit/b55652ec61c3bb6e6762ea3213fa92945bdb60b5))

* Bump glob-parent from 5.1.1 to 5.1.2

Bumps [glob-parent](https://github.com/gulpjs/glob-parent) from 5.1.1 to 5.1.2.
- [Release notes](https://github.com/gulpjs/glob-parent/releases)
- [Changelog](https://github.com/gulpjs/glob-parent/blob/main/CHANGELOG.md)
- [Commits](https://github.com/gulpjs/glob-parent/compare/v5.1.1...v5.1.2)

---
updated-dependencies:
- dependency-name: glob-parent
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`346d140`](https://github.com/svange/api-portal/commit/346d140534575d4d4d98dd051d21c0d8c63e6441))

* Bump url-parse from 1.5.1 to 1.5.3 in /dev-portal

Bumps [url-parse](https://github.com/unshiftio/url-parse) from 1.5.1 to 1.5.3.
- [Release notes](https://github.com/unshiftio/url-parse/releases)
- [Commits](https://github.com/unshiftio/url-parse/compare/1.5.1...1.5.3)

---
updated-dependencies:
- dependency-name: url-parse
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`b38438e`](https://github.com/svange/api-portal/commit/b38438efff2486f813abb1a8aad86ac007339a88))

* Bump tar from 6.1.7 to 6.1.11 in /dev-portal

Bumps [tar](https://github.com/npm/node-tar) from 6.1.7 to 6.1.11.
- [Release notes](https://github.com/npm/node-tar/releases)
- [Changelog](https://github.com/npm/node-tar/blob/main/CHANGELOG.md)
- [Commits](https://github.com/npm/node-tar/compare/v6.1.7...v6.1.11)

---
updated-dependencies:
- dependency-name: tar
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`347fc3d`](https://github.com/svange/api-portal/commit/347fc3d7a1b613dab61a31e5fd23fc4433579a8d))

* Update CODEOWNERS ([`0e55489`](https://github.com/svange/api-portal/commit/0e55489d106b1ec5c1ce192b9e5be7f9d5e9b05b))

* Fix outdated branch reference ([`4443347`](https://github.com/svange/api-portal/commit/44433473722628e9f6b00575d208a96562d20ed1))

* Bump path-parse from 1.0.6 to 1.0.7 in /dev-portal

Bumps [path-parse](https://github.com/jbgutierrez/path-parse) from 1.0.6 to 1.0.7.
- [Release notes](https://github.com/jbgutierrez/path-parse/releases)
- [Commits](https://github.com/jbgutierrez/path-parse/commits/v1.0.7)

---
updated-dependencies:
- dependency-name: path-parse
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`11354e8`](https://github.com/svange/api-portal/commit/11354e8d2b6102b010266af5b2d1c67f726096dc))

* Bump tar from 6.1.0 to 6.1.7 in /dev-portal

Bumps [tar](https://github.com/npm/node-tar) from 6.1.0 to 6.1.7.
- [Release notes](https://github.com/npm/node-tar/releases)
- [Changelog](https://github.com/npm/node-tar/blob/main/CHANGELOG.md)
- [Commits](https://github.com/npm/node-tar/compare/v6.1.0...v6.1.7)

---
updated-dependencies:
- dependency-name: tar
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`5141f8f`](https://github.com/svange/api-portal/commit/5141f8f5ecca1f3eb12c962a8a0356a8eafac2cc))

* Bump path-parse from 1.0.6 to 1.0.7

Bumps [path-parse](https://github.com/jbgutierrez/path-parse) from 1.0.6 to 1.0.7.
- [Release notes](https://github.com/jbgutierrez/path-parse/releases)
- [Commits](https://github.com/jbgutierrez/path-parse/commits/v1.0.7)

---
updated-dependencies:
- dependency-name: path-parse
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`17cdb19`](https://github.com/svange/api-portal/commit/17cdb194bcb7b1d8017c0844f070e84092842441))

* Remove auto-merge utility

Turns out it&#39;s running into permissions errors, and I&#39;m not about to use an encrypted personal access token on this account to circumvent that. ([`bcf695e`](https://github.com/svange/api-portal/commit/bcf695eb0364f3a262c77fb20e7d35d584661bb0))

* Fix typo ([`0de40f5`](https://github.com/svange/api-portal/commit/0de40f57b86a97bb677858b1f8b92caa4613bf73))

* Work around ahmadnassri/action-dependabot-auto-merge#60 ([`ca5f74f`](https://github.com/svange/api-portal/commit/ca5f74f9024201e259dc565f6ab227a442ff4112))

* Update package.json ([`b35915a`](https://github.com/svange/api-portal/commit/b35915afc96d2052b6f31458c00ff9dec78758f7))

* Don&#39;t require SSH to download the package ([`58f4119`](https://github.com/svange/api-portal/commit/58f41199177fbde096be8e0a3e30c382a5b6ec95))

* Bump ws from 6.2.1 to 6.2.2 in /dev-portal

Bumps [ws](https://github.com/websockets/ws) from 6.2.1 to 6.2.2.
- [Release notes](https://github.com/websockets/ws/releases)
- [Commits](https://github.com/websockets/ws/commits)

---
updated-dependencies:
- dependency-name: ws
  dependency-type: indirect
...

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`20005a5`](https://github.com/svange/api-portal/commit/20005a5b40431022f5636254f69de1d32026fd80))

* Update auto-merge.yml ([`3af8d28`](https://github.com/svange/api-portal/commit/3af8d282047fd4c9701a09f12f0ff9bc67b3b324))

* Bump ws from 7.2.3 to 7.4.6

Bumps [ws](https://github.com/websockets/ws) from 7.2.3 to 7.4.6.
- [Release notes](https://github.com/websockets/ws/releases)
- [Commits](https://github.com/websockets/ws/compare/7.2.3...7.4.6)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`3acc206`](https://github.com/svange/api-portal/commit/3acc206fd726fc4db104cbeb9ec063ba21d3bbf5))

* Bump dns-packet from 1.3.1 to 1.3.4 in /dev-portal

Bumps [dns-packet](https://github.com/mafintosh/dns-packet) from 1.3.1 to 1.3.4.
- [Release notes](https://github.com/mafintosh/dns-packet/releases)
- [Changelog](https://github.com/mafintosh/dns-packet/blob/master/CHANGELOG.md)
- [Commits](https://github.com/mafintosh/dns-packet/compare/v1.3.1...v1.3.4)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`93b23b5`](https://github.com/svange/api-portal/commit/93b23b56a881477b29b1cf504beb41242329fbed))

* Create auto-merge.yml ([`e6dbfbc`](https://github.com/svange/api-portal/commit/e6dbfbc404e9335cded4368dc3b2a6217cea3d05))

* Update Swagger UI fork reference ([`3a87a6b`](https://github.com/svange/api-portal/commit/3a87a6b4bd33b3e082ae81ce46fd36bccab0f126))

* fix issue #431 ([`25a502d`](https://github.com/svange/api-portal/commit/25a502d081ec113ba824129a973403c0ad1d0cc9))

* v4.1.0 ([`202adda`](https://github.com/svange/api-portal/commit/202adda9654c3de6b7b2c8fd23a7ac7833e8b26c))

* Fix version script ([`3522f14`](https://github.com/svange/api-portal/commit/3522f143b435357bc3a1c326f6e8bd2807969790))

* Update vulnerable dependencies, simplify Markdown parsing

The `react-markdown` update was non-trivial, so I decided it&#39;d be a
better use of time to just replace it wholesale with Marked. Also,
DOMPurify just happened to already exist, so adding it as a dependency
doesn&#39;t actually bloat the bundle any.

Also added a couple features:

- GitHub Flavored Markdown is now supported
- Headers in custom content fragments now include IDs prefixed with
  `header-`, so you can reference things like `# Section Header` via
  `#header-section-header`. ([`86fe8ea`](https://github.com/svange/api-portal/commit/86fe8eae4ed781a9b065d583f3273732952fb0c3))

* Bump y18n from 4.0.0 to 4.0.1

Bumps [y18n](https://github.com/yargs/y18n) from 4.0.0 to 4.0.1.
- [Release notes](https://github.com/yargs/y18n/releases)
- [Changelog](https://github.com/yargs/y18n/blob/master/CHANGELOG.md)
- [Commits](https://github.com/yargs/y18n/commits)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`dcf8106`](https://github.com/svange/api-portal/commit/dcf81064900845a016ff5cc0a12c69aec53d596c))

* Remove a bunch of unused crud

The less we can check into Git, the better. ([`79db707`](https://github.com/svange/api-portal/commit/79db70739a0b1840557d7309df6e151ad4054865))

* v4.0.4 ([`b0b3725`](https://github.com/svange/api-portal/commit/b0b37253d03ab52bd92c8b7f312f6600cb64f093))

* Fix ESLint warnings and errors from updating ([`3540428`](https://github.com/svange/api-portal/commit/3540428e3f8f0be28bcc65227978f66f748a61fc))

* Prepare for v4.0.4 + add blurb explaining why a certain route exists ([`b4a3943`](https://github.com/svange/api-portal/commit/b4a3943eebc7e5dadd55d41ece7fc103f6198cb9))

* npm audit fix ([`f75a68d`](https://github.com/svange/api-portal/commit/f75a68dd017ba90dc58fdd108f29b6f92b1dae82))

* Update CODEOWNERS ([`12cb3ec`](https://github.com/svange/api-portal/commit/12cb3ec689939f4eb94f679bee3fc423c8df51bd))

* Redo building docs for clarity, delegate more to the AWS-side docs

Addresses #459 ([`043511f`](https://github.com/svange/api-portal/commit/043511f94166d15b5d324d7a0adea735bfbf8369))

* Merge pull request #460 from awslabs/amazon-meaisiah-patch-1

Update CODEOWNERS ([`7de812f`](https://github.com/svange/api-portal/commit/7de812f17c6e2eee47f702b01634b1bceacd25bc))

* Update CODEOWNERS ([`2e33f06`](https://github.com/svange/api-portal/commit/2e33f06ef5947d494d34f509a7ee97ea018aa9d1))

* Merge pull request #427 from awslabs/dependabot/npm_and_yarn/lambdas/cloudfront-security/lodash-4.17.19 ([`b7ee0c9`](https://github.com/svange/api-portal/commit/b7ee0c91bf7dfc9285ddca742424b42593240e3d))

* Bump lodash from 4.17.15 to 4.17.19 in /lambdas/cloudfront-security

Bumps [lodash](https://github.com/lodash/lodash) from 4.17.15 to 4.17.19.
- [Release notes](https://github.com/lodash/lodash/releases)
- [Commits](https://github.com/lodash/lodash/compare/4.17.15...4.17.19)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`abc0334`](https://github.com/svange/api-portal/commit/abc0334cb3396068ba9de88dc617323d18bb2bea))

* Merge pull request #428 from awslabs/dependabot/npm_and_yarn/dev-portal/lodash-4.17.19

Bump lodash from 4.17.15 to 4.17.19 in /dev-portal ([`3f344c6`](https://github.com/svange/api-portal/commit/3f344c67b8df48430bc9cfc14729d47b49706763))

* Merge pull request #426 from awslabs/dependabot/npm_and_yarn/lodash-4.17.19

Bump lodash from 4.17.15 to 4.17.19 ([`c9d60e7`](https://github.com/svange/api-portal/commit/c9d60e79117d24258a947684dfb9c9af30477e19))

* Bump lodash from 4.17.15 to 4.17.19 in /dev-portal

Bumps [lodash](https://github.com/lodash/lodash) from 4.17.15 to 4.17.19.
- [Release notes](https://github.com/lodash/lodash/releases)
- [Commits](https://github.com/lodash/lodash/compare/4.17.15...4.17.19)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`c18b270`](https://github.com/svange/api-portal/commit/c18b2701a6132c02b95357713d1dc79ac894830f))

* Merge pull request #426 from awslabs/dependabot/npm_and_yarn/lodash-4.17.19

Bump lodash from 4.17.15 to 4.17.19 ([`5ebf346`](https://github.com/svange/api-portal/commit/5ebf3466379f7ccc078f77bfc29d2db32f60ec30))

* Bump lodash from 4.17.15 to 4.17.19

Bumps [lodash](https://github.com/lodash/lodash) from 4.17.15 to 4.17.19.
- [Release notes](https://github.com/lodash/lodash/releases)
- [Commits](https://github.com/lodash/lodash/compare/4.17.15...4.17.19)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`76d6b25`](https://github.com/svange/api-portal/commit/76d6b25a6ecda0641db4fd982e8949efac4c42bf))

* v4.0.3 ([`8fb8ed4`](https://github.com/svange/api-portal/commit/8fb8ed4e6efdf49fefe8653fc362d04fc23e3096))

* Fix broken route ([`a9039bb`](https://github.com/svange/api-portal/commit/a9039bb4e2443a8693b7845ef8330737280e9bbd))

* Add version marker ([`27b8a89`](https://github.com/svange/api-portal/commit/27b8a895d1426d70e9ebaf67832e72deceb71251))

* v4.0.1 ([`8532165`](https://github.com/svange/api-portal/commit/8532165b9cf6b8756eb9db684cc893a16fac8272))

* Add scripts to automate versioning ([`78bc0b9`](https://github.com/svange/api-portal/commit/78bc0b941722d9ce5d1c8578d2bf1862ad9aa653))

* Merge pull request #423 from awslabs/backend-fix ([`58504d9`](https://github.com/svange/api-portal/commit/58504d956ec6f42b02280291bacc18e039314484))

* Merge branch &#39;master&#39; into backend-fix ([`ed4b351`](https://github.com/svange/api-portal/commit/ed4b351e1d541b5bf6d6aec1b45fee1cc09dc1d8))

* Bump websocket-extensions from 0.1.3 to 0.1.4 in /dev-portal

Bumps [websocket-extensions](https://github.com/faye/websocket-extensions-node) from 0.1.3 to 0.1.4.
- [Release notes](https://github.com/faye/websocket-extensions-node/releases)
- [Changelog](https://github.com/faye/websocket-extensions-node/blob/master/CHANGELOG.md)
- [Commits](https://github.com/faye/websocket-extensions-node/compare/0.1.3...0.1.4)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`a97cb27`](https://github.com/svange/api-portal/commit/a97cb27141cbffa170d346ecebee37057992a0d2))

* Override a couple bad Express defaults ([`7aa9d6f`](https://github.com/svange/api-portal/commit/7aa9d6f087149b2e1c3481824705c658aeb7c387))

* Simplify an IAM policy slightly ([`67d6e05`](https://github.com/svange/api-portal/commit/67d6e05f9845fc53a306960f88e33fc6ce9802fa))

* v4.0.0 ([`ad4bc59`](https://github.com/svange/api-portal/commit/ad4bc59e857ff84f9f74620ac2ec39f7b28a7ff8))

* Merge staging into master ([`71441db`](https://github.com/svange/api-portal/commit/71441db852f1e8309dd27acd357038b62cd3f509))

* Merge create-migrator into staging ([`e518f77`](https://github.com/svange/api-portal/commit/e518f7720726c3aa26b5fb2817cd37b926f22182))

* Fix several bugs, add lots of debugging logs ([`3dc3e0d`](https://github.com/svange/api-portal/commit/3dc3e0df961766329db10654c2ee3f86e519bfcd))

* Update README to clarify some things ([`10e7a9b`](https://github.com/svange/api-portal/commit/10e7a9bc60a01903c503a0886866ddbe5de96b6a))

* Include DynamoDB migrations, optimize networking

If we&#39;re going to make this many calls repeatedly, it better be
optimized. ([`ffdc5ac`](https://github.com/svange/api-portal/commit/ffdc5ac7993970455ad6011ab2fa2ec8a1434369))

* Add importer + exporter ([`05b0207`](https://github.com/svange/api-portal/commit/05b0207c0224cfadf2d4b3d47b8cfe907c591ed2))

* Merge pull request #414 from awslabs/set-security-headers ([`a1f1642`](https://github.com/svange/api-portal/commit/a1f16426b9c3b831688890639cd1a17a8616438f))

* Run `npm install` in `lambdas/cloudfront-security` ([`2191174`](https://github.com/svange/api-portal/commit/21911746cb6cb7290c17ca5f386bb51d198db220))

* Bust cache when loading current API

When starting from scratch, if you go to the admin panel, set the first
API to display, and switch back to the APIs page, it&#39;s now out of date
with what&#39;s server-side. ([`6107223`](https://github.com/svange/api-portal/commit/6107223f8b701a81c16b5ef5d39f6f22525564fe))

* Fix type error

Swagger UI doesn&#39;t offer any facilities to clean up after itself, so we
have to tolerate it. ([`73ee9ec`](https://github.com/svange/api-portal/commit/73ee9ece049f33f3ee84468ab38e41e6b2f39bcd))

* Add a variable so people can reset the edge lambda

This could be necessary in the future, so I want to lay the groundwork
now. Also, it&#39;s a potentially common need in development. ([`8d861ea`](https://github.com/svange/api-portal/commit/8d861eaafe2f7166a51589a633c3b7938e8bffce))

* Fix a logging error in a missed route ([`12c388e`](https://github.com/svange/api-portal/commit/12c388efa5d6d49ef8e76f2bccd7b9715821ec92))

* Fix lambda ([`3a5ea88`](https://github.com/svange/api-portal/commit/3a5ea885c96acd7a134ce5b979b3d92a4739982f))

* Create replicator ([`33ca9ef`](https://github.com/svange/api-portal/commit/33ca9efb835e74132d2acea261b70963660607c7))

* Set security headers on CFN responses ([`f6d89d2`](https://github.com/svange/api-portal/commit/f6d89d289a9eaac15113b867b347adfe2ad1bcc2))

* Merge pull request #416 from awslabs/fix-template-cognito-errors ([`4fdb5be`](https://github.com/svange/api-portal/commit/4fdb5be53ba9ebf60fe34716603638920d2743cd))

* Fix the script to properly clean up old resources

`git checkout` removes all the files already tracked by Git, but it
doesn&#39;t remove untracked files. That&#39;s what this change fixes. ([`2294e24`](https://github.com/svange/api-portal/commit/2294e246acefea16fa0858b2fb00c93cbe536155))

* Fix some template errors ([`b943ea4`](https://github.com/svange/api-portal/commit/b943ea4d383fd169219193ba0fdb5f0e4017f1bd))

* Create a real test file for the pre-signup trigger

This gets the tests passing again.

Also, make the handler strict mode. ([`99d109c`](https://github.com/svange/api-portal/commit/99d109cbf26bcb4b192dd5676a9d5e7cb7a13d2a))

* Merge pull request #410 from awslabs/hide-marketplace-subscription ([`e9a1657`](https://github.com/svange/api-portal/commit/e9a1657e0f874a04bb7f35282dac1471e1c668d6))

* Merge branch &#39;staging&#39; into hide-marketplace-subscription ([`0eda9ad`](https://github.com/svange/api-portal/commit/0eda9adcc0e13385271e018d1f1e1692ac9242ac))

* Merge pull request #413 from awslabs/prevent-user-existence-errors

Prevent exposing the existence of users from the login page ([`c856e37`](https://github.com/svange/api-portal/commit/c856e37d0566561f371628b53328cb4124a823b9))

* Prevent exposing the existence of users from the login page ([`8735dc0`](https://github.com/svange/api-portal/commit/8735dc0843cb614d31bec0f1c4aa7f93f2d692a0))

* Merge pull request #412 from awslabs/fix-cognito-break

Revert a breaking change to user pools, retain them post-deletion ([`d2265ed`](https://github.com/svange/api-portal/commit/d2265ed2762116abc38b8f7707eb1e3da63dc1d0))

* Revert a breaking change to user pools, retain them post-deletion

Instead of changing the schema, I&#39;m enforcing it in the lambda, to avoid
Cognito&#39;s limitation of not being able to modify existing attributes
on user pools. ([`fd38849`](https://github.com/svange/api-portal/commit/fd3884988211e1918b29c3606b403670cbc9a78f))

* Hide marketplace subscription stuff, remove relevant endpoints

It&#39;s been broken for a while, so it&#39;s pretty useless to try to keep
around. ([`835ccc7`](https://github.com/svange/api-portal/commit/835ccc7206a78b644d266cb4d2318787b703698a))

* made users experience better WRT admins

- display if users are admins in the registered table
- disable the promote button for existing admins
- indicate in the table which user you are
- disable the delete button if you&#39;re trying to delete yourself
- add BIG RED warning indicator to the modal if you&#39;re deleting an admin ([`d4e5697`](https://github.com/svange/api-portal/commit/d4e5697ca9f51ccc5b44d6cd9a5b39c78a5b9305))

* Merge pull request #406 from awslabs/fix-catalog-visibility

Offer a workaround in case an API has a usage plan added after it&#39;s displayed ([`803b3b1`](https://github.com/svange/api-portal/commit/803b3b150e9a45f727d8c0eadc6d3eeaec8a1ed5))

* Offer a workaround in case an API has a usage plan added after it&#39;s displayed ([`4cc61c9`](https://github.com/svange/api-portal/commit/4cc61c97882e51194c8c29fd14dd5c87a127e87e))

* fix the admin panel&#39;s visibility buttons for non-sub APGWI apis ([`d56e6e2`](https://github.com/svange/api-portal/commit/d56e6e25d55f26adc8cb8e7bdb84af3c6a92b3ff))

* remove `undefined` from the endpoint if basepath isn&#39;t defined (generic apis) ([`158abea`](https://github.com/svange/api-portal/commit/158abeae593b8e2be943c2b7d341c2f89d719e7e))

* allow differentiation between two different stages on a non-subscribable api gateway api ([`c430b4b`](https://github.com/svange/api-portal/commit/c430b4b30275decd8043b6c7dc6c30a19d1e0285))

* add username to the signout button
- also rename unused `cognitoUser` to `user`
- clarified some of the auth functions use and when they happen ([`5253194`](https://github.com/svange/api-portal/commit/525319433df8d0c180f843c747ae4a8bc4796228))

* hide subscribe button if an API doesn&#39;t have a usage plan ([`d9b36a1`](https://github.com/svange/api-portal/commit/d9b36a16b0434dd37d5341dbce0d00c89d3c77f8))

* Merge pull request #390 from awslabs/fix-typo ([`8834e25`](https://github.com/svange/api-portal/commit/8834e256001c2196427aa61b82549a4b4908f6f8))

* Forgot some line breaks. ([`b177a9e`](https://github.com/svange/api-portal/commit/b177a9e0517bc2a27d469a67979b6668843110bf))

* Fix typo in feedback ([`2b524d2`](https://github.com/svange/api-portal/commit/2b524d2b499cdbd69656715f17acadeb35bf5890))

* Merge pull request #399 from awslabs/fix-admin-promotion

Fix admin promotion to actually be idempotent ([`8065dd0`](https://github.com/svange/api-portal/commit/8065dd0571ebec616039ffbc92eb1f5ae293b5c3))

* Fix admin promotion to actually be idempotent ([`a742a85`](https://github.com/svange/api-portal/commit/a742a850c3a903433fa3801688bd2af5f3cbe0f8))

* Merge pull request #398 from awslabs/hide-request-routes

Hide the user registration request routes ([`0d28d05`](https://github.com/svange/api-portal/commit/0d28d0571dfa610e22f66e1654885bc91252b485))

* Merge branch &#39;staging&#39; into hide-request-routes ([`024d61c`](https://github.com/svange/api-portal/commit/024d61cf9bfd7b45452f6ea9bc5e73f08fd5a747))

* fix the sam cli install link ([`196c4c9`](https://github.com/svange/api-portal/commit/196c4c9ca0fc49e24458d8750ee22212d6436ce5))

* Hide the user request routes ([`5a72ff4`](https://github.com/svange/api-portal/commit/5a72ff41e2dcfcd24b02430d4a99d99138ab9367))

* Document the test scripts ([`9175dd4`](https://github.com/svange/api-portal/commit/9175dd43e2217ff11759d28439fb228460261cd2))

* Fix several docs omissions and inconsistencies

Other changes:

- Moved all the deployer config docs from the example file to
  BUILDING.md for easier reading and formatting.
- Removed from the user-visible docs any trace of the `&#39;request&#39;` mode
  for account registration, as it&#39;s not currently supported and the
  existing implementation is untested and critically broken. It&#39;s just
  commented out, so anyone who views the source code can still see
  traces of it (and infer that it&#39;s a likely WIP feature).
- Revised the deployment scripts so I could better understand the
  numerous points of configuration. (It helped me write the rest of this
  patch.) ([`0256be8`](https://github.com/svange/api-portal/commit/0256be8ab020d454378949b789bc7ca4eeb5412c))

* Clarify deployer config documentation ([`c045bcc`](https://github.com/svange/api-portal/commit/c045bcc6a52889919277ac185e7ac93c9ba22add))

* Merge pull request #395 from awslabs/fix-environment

Fix Node environment for lambdas, set backend to production ([`8770527`](https://github.com/svange/api-portal/commit/87705276cc74ae16f8f774a77b52196a58f51ebe))

* Fix Node environment for lambdas, set backend to production ([`7343e11`](https://github.com/svange/api-portal/commit/7343e11facf45efce9ef0c878c1080869eae1764))

* Merge pull request #393 from awslabs/fix-api-fetch ([`16db1ae`](https://github.com/svange/api-portal/commit/16db1aed7ddbafccf5af675027c42e86dc24efb1))

* Fix unintended limitation with fetching APIs ([`35c5058`](https://github.com/svange/api-portal/commit/35c5058ba938c741a77f8da0de92b879b854ddea))

* Merge pull request #392 from awslabs/fix-bucket-permissions ([`4e4f4d5`](https://github.com/svange/api-portal/commit/4e4f4d580baf0c543660b82f3525a58c2f361db3))

* Remove Chalk and reimplement the logic ourselves

If we don&#39;t, it breaks the installation process as the task runner
needs to be able to initialize without all the dependencies installed.
As the installation scripts do employ color (and I want to keep it that
way), I have to implement everything manually. Chalk of course does
*not* exist prior to installation as it&#39;s a dependency that *would* be
installed. ([`79625ea`](https://github.com/svange/api-portal/commit/79625ea84e9a7fc58fe3bcb319197434b5338d27))

* Fix bucket permissions ([`c65414e`](https://github.com/svange/api-portal/commit/c65414e6c64a0638c9a4cce0be26309e2e25b932))

* Merge pull request #388 from awslabs/fix-colors ([`36dd2fd`](https://github.com/svange/api-portal/commit/36dd2fd9d21663b2e82688abd9899bacdef70576))

* Use Chalk for terminal coloring

It properly handles color enabling/disabling, among other things.

Also, don&#39;t rely on the current working directory in `test.js` - it was
causing errors running it from the root. ([`153855a`](https://github.com/svange/api-portal/commit/153855a51893048ddd98f0516c8175886b3c3ce4))

* Merge pull request #380 from awslabs/simplify-setup ([`0df8d9f`](https://github.com/svange/api-portal/commit/0df8d9f3bf6e18547843de4ae664843df2a9cee1))

* Unbreak Travis ([`d5a2774`](https://github.com/svange/api-portal/commit/d5a277490bd852d8b4ae28648ac22783a989ac3f))

* Comment out tests for a feature not yet implemented ([`840a573`](https://github.com/svange/api-portal/commit/840a573afbadb72b140ea52d4709f3cfcb47fff4))

* Ensure the static asset uploader actually uploads its contents ([`526dd0c`](https://github.com/svange/api-portal/commit/526dd0c92b97bc9365fcb5c58af84e6eebec39dc))

* Update generated files and lambda node_modules ([`a7ad730`](https://github.com/svange/api-portal/commit/a7ad730aaa6bdfeac08c4023742f762a1c2ec6d0))

* Fix a couple stray `npm run` references ([`63d7316`](https://github.com/svange/api-portal/commit/63d731616d60978e2d4c856b445ac468314e5fa0))

* Add reinstall task, extract a common list for easier editing ([`3ecf52d`](https://github.com/svange/api-portal/commit/3ecf52dc311df444381995de136c57aa7770efc6))

* Fix forgotten test ([`328ea5b`](https://github.com/svange/api-portal/commit/328ea5babe1eb869d78385bf5ec403c2e669b86b))

* Update packages ([`d6df1d8`](https://github.com/svange/api-portal/commit/d6df1d8e8d17414f77c0544f5981e0011693fbad))

* Automate workflow better, remove redundant aws-sdk dependencies ([`f7e3141`](https://github.com/svange/api-portal/commit/f7e3141addbe48ca6f457558e6de2166a1ebf3ec))

* Fix race condition with config in asset uploader ([`c648528`](https://github.com/svange/api-portal/commit/c64852861b7de215ef8503922b8055903d73929e))

* Add a script to run npm commands across all modules. ([`32385f6`](https://github.com/svange/api-portal/commit/32385f6f5bb2264a0b7b02403f01523d7f259306))

* Merge pull request #386 from awslabs/tweak-accounts

Tweak accounts ([`5d122c1`](https://github.com/svange/api-portal/commit/5d122c1c7f4005d4b079976b22aba1fe740875ad))

* Tweak accounts some ([`731faa4`](https://github.com/svange/api-portal/commit/731faa4d23bfbc3a7197ebcf25ac5c977476c559))

* Merge pull request #378 from awslabs/dev-tweaks

Tweak the dev setup a little ([`9a5ba4b`](https://github.com/svange/api-portal/commit/9a5ba4b81cc023d07ea73123a9ac4e227c985908))

* Fix numbering in README ([`2c30760`](https://github.com/svange/api-portal/commit/2c3076054ec1d29769fc774659c7196ba324f9ea))

* Split template generation from config writing ([`99eb2ca`](https://github.com/svange/api-portal/commit/99eb2ca558457e6e239f967b8d2c0aab602e009d))

* Merge pull request #377 from awslabs/bugfix

Fix bugs with email validation and catalog visibility listings, remove aws-sdk from catalog updater ([`b630a3b`](https://github.com/svange/api-portal/commit/b630a3b99abca441d3519960998e516632f1bbd3))

* Fix email error message ([`b28d52b`](https://github.com/svange/api-portal/commit/b28d52b8aa1f133fbd54aace01aaeea3021632fb))

* Fix bug with visibility being computed incorrectly ([`09a9d87`](https://github.com/svange/api-portal/commit/09a9d87d41c66d759089f37164d371cf3860f655))

* Remove another catalog dependency (it comes with the runtime)

- It&#39;s also separately installed globally ([`d890055`](https://github.com/svange/api-portal/commit/d890055476e58d5a83a9110f217b065c57cc3e6e))

* Merge pull request #375 from awslabs/meaisiah-last-minute

Last-minute pre-release fixes ([`a9034db`](https://github.com/svange/api-portal/commit/a9034db8f3e65e6d8f10e0ccdf61eb398665639f))

* Rebuild assets after update ([`0b38e1d`](https://github.com/svange/api-portal/commit/0b38e1df99091da8632a8a8a24bf6acf4bd366f2))

* Fix npm audit issues and update top-level dependencies

Also remove several duplicate packages in `dev-portal/`. ([`2c23a3b`](https://github.com/svange/api-portal/commit/2c23a3b1b311c4a2a5dfb96bd6e9861e3f437929))

* Get tests passing again ([`09337ae`](https://github.com/svange/api-portal/commit/09337aeb8a2b147bda8fcdf0c9633f6e2acac5b2))

* Rebuild assets (again) ([`09f1aca`](https://github.com/svange/api-portal/commit/09f1aca1317a357644165e9779ba139bca01b797))

* Add spinner for SDK generation toggling, move comment to better place

The comment was only on one of them, and now that there&#39;s a lot more of
them, the comment and its location needed to be updated to better
reflect that. ([`4e55740`](https://github.com/svange/api-portal/commit/4e55740f58f6555eab8efd08f6d64df6b1b71ea1))

* Rebuild assets ([`869222f`](https://github.com/svange/api-portal/commit/869222f4f49364071f14aa1107a8d3cbb6c9973a))

* Fix missing information, better leverage Swagger internals

Also, tweak a few styles ([`d7cede8`](https://github.com/svange/api-portal/commit/d7cede8d572db697cd2a8f5b4673c7ed83d4280f))

* Fix auth + display bugs, fix a bug in export/SDK downloads

This does five things:

1. Ensure all lambda requests wait for the auth token to be set before
   continuing. All the backend methods currently require authorization
   to execute, but none of the front-end calls were waiting on that.
2. I previously changed `stage` to `apiStage`, and this caused a lot of
   breakage. The lack of clear types only made this more difficult, as
   it was consistently not clear at a glance what of the 3-ish different
   representations APIs have at different places within the app (both in
   front end, backend, and in the catalog). This fixes that in all
   places.
3. Consume errors from the request as a *blob* and not a *JSON object*.
4. Move the `initApiGatewayClient` in `init` to the `else`, as the auth
   flow for when a valid JWT already exists also automatically attempts
   re-authentication from that token, and so it&#39;s unnecessary to always
   initialize with a blank client. (Plus, blank clients are almost never
   actually used in practice anyways.)
5. SwaggerUI is now only loaded whenever the element is guaranteed to
   exist. This was mainly a step in fault tolerance, as it was throwing
   due to other bugs and was making them a little more difficult to
   troubleshoot. ([`0ae165e`](https://github.com/svange/api-portal/commit/0ae165e42da949c255f333c622a8d0d156304569))

* Fix admin visibility toggling ([`093ac01`](https://github.com/svange/api-portal/commit/093ac016d3e7705896ec65b29d94ceaf69786bfc))

* Improve catalog logging ([`99d683f`](https://github.com/svange/api-portal/commit/99d683f1e27490ed766baeaf8308519d8bf50cb3))

* Add loading spinner for update, signal from server-side

Also, remove some useless timeouts. ([`98ae297`](https://github.com/svange/api-portal/commit/98ae297e3b622a908c3dd72154c82a5bee4305fd))

* Fix test failure ([`e15c0fc`](https://github.com/svange/api-portal/commit/e15c0fce0424c316e60c6948180fd7494b0f1e69))

* Optimize catalog updater, remove unnecessary dependency ([`75013be`](https://github.com/svange/api-portal/commit/75013be0b54c0e92950a8d863c3b72218ae67264))

* Rip out update button ([`d953f28`](https://github.com/svange/api-portal/commit/d953f2887ffedf41698404039fca2a54e83f1b40))

* Fix MIME issue + missing file in download ([`65c763b`](https://github.com/svange/api-portal/commit/65c763bfe58b00f44e6e645de408138f2e0eb77c))

* Add button in admin panel to update the API list ([`ab4945a`](https://github.com/svange/api-portal/commit/ab4945aba84e81a2e30d2316717e1dadf620c100))

* Fix catalog state bug ([`319570a`](https://github.com/svange/api-portal/commit/319570ae9d1d35c8f69f765e9318cb3ab5347088))

* Make dashboard spinner reflect error ([`bff1a84`](https://github.com/svange/api-portal/commit/bff1a84c31157567e05938cf8827b081a72681cc))

* Hide stage list when no named stages are shown ([`5411687`](https://github.com/svange/api-portal/commit/541168730a120b89162f181586b81ed6399a3bab))

* Disable pending requests as it&#39;s not yet supported ([`54362a9`](https://github.com/svange/api-portal/commit/54362a91a1850466c06641df0f99aad45ed05d21))

* Fix API key not loading correctly ([`3a65a0f`](https://github.com/svange/api-portal/commit/3a65a0f3d699606e0a2aadeeeb7fd5cd1ace4ea4))

* Merge pull request #374 from awslabs/meaisiah-image-fix

Fix an image URL ([`a6df179`](https://github.com/svange/api-portal/commit/a6df179cb8de1a5040e2378d684c1d318c0235bd))

* Merge branch &#39;master&#39; into meaisiah-image-fix ([`a7d50d0`](https://github.com/svange/api-portal/commit/a7d50d09455023617a85fbbfaafb6b01a6455d5f))

* Merge pull request #373 from awslabs/meaisiah-file-fix

Fix file upload iteration ([`3aef3a5`](https://github.com/svange/api-portal/commit/3aef3a55d1dcc79e28532ea5b0edbbe28c71c01b))

* Merge branch &#39;master&#39; into meaisiah-file-fix ([`25609ba`](https://github.com/svange/api-portal/commit/25609ba738f7e1bde60f3c7be26ab0b35a4f8a40))

* Merge pull request #372 from awslabs/meaisiah-loading-spinners

Add a couple loading spinners ([`d12c3ab`](https://github.com/svange/api-portal/commit/d12c3abef5e067ad9831b2b4f5d2ca9f706bca54))

* Merge branch &#39;master&#39; into meaisiah-loading-spinners ([`809f712`](https://github.com/svange/api-portal/commit/809f712efae82a15daf90286be1cdf36dc450776))

* Merge pull request #371 from awslabs/meaisiah-export-extension-fix

Add a missing comma ([`eeae30f`](https://github.com/svange/api-portal/commit/eeae30f1c476426127d87d6f4fdbef5639a4af23))

* Merge branch &#39;master&#39; into meaisiah-export-extension-fix ([`15100d9`](https://github.com/svange/api-portal/commit/15100d96d5f9ea13c18abb5dc917387053d63158))

* Merge pull request #370 from awslabs/meaisiah-assets-fix

Fix asset uploader, tweak backend and dev setup ([`54d4bfa`](https://github.com/svange/api-portal/commit/54d4bfa3806cd9e1a0a9fb54bc99b8d01e7d6b4d))

* Merge branch &#39;master&#39; into meaisiah-assets-fix ([`ef84208`](https://github.com/svange/api-portal/commit/ef842080823a3fe5046cf7ec600838d8758d1467))

* Merge pull request #369 from awslabs/meaisiah-email-fix

Add some rudimentary copy for the email ([`ac41897`](https://github.com/svange/api-portal/commit/ac418976fb74333f2715a3ed89233cff30c3a354))

* Merge branch &#39;master&#39; into meaisiah-email-fix ([`787b43a`](https://github.com/svange/api-portal/commit/787b43aeb694e45d69b1b9c249ad45f8ce2a2961))

* Merge pull request #368 from awslabs/meaisiah-export-fix

Fix corrupted export functionality ([`da79140`](https://github.com/svange/api-portal/commit/da791407433248055d274c89038186c1320f6a06))

* Merge branch &#39;master&#39; into meaisiah-export-fix ([`b7a443d`](https://github.com/svange/api-portal/commit/b7a443d49541ba4a4fada32fba5d5eb73218806c))

* Merge pull request #367 from awslabs/meaisiah-account-fix

Fix broad brokenness with account management ([`abdd43e`](https://github.com/svange/api-portal/commit/abdd43e3653632f249fc54e9e854f1adad9603a1))

* Fix an image URL ([`7deb677`](https://github.com/svange/api-portal/commit/7deb6770fbe402d61351c85d7ac017287918d4c5))

* Fix file upload ([`347cb5b`](https://github.com/svange/api-portal/commit/347cb5bab43b1f667a0635f9757e5c5290ec0c3e))

* Add a couple loading spinners ([`b111305`](https://github.com/svange/api-portal/commit/b111305c970cdc2df9b3a03ba1f5772a95ac9a74))

* Add a missing comma ([`2386b97`](https://github.com/svange/api-portal/commit/2386b972b7784c124d57bc4ebc97f322b8513eef))

* Fix dev setup to allow signing in in a dev-mode CloudFront deployment

Also, rip out some no-longer-used callback URLs ([`9dad8d3`](https://github.com/svange/api-portal/commit/9dad8d3bb4e685137bf6aec7c540a6b657dd9ab4))

* Handle errors from a few promises correctly ([`572a220`](https://github.com/svange/api-portal/commit/572a220f823fb76396a3556ac53dc9c96a4d0bfb))

* Fix asset uploader ([`a8012fc`](https://github.com/svange/api-portal/commit/a8012fc9aa12073c48799631ceb8b6a93f346050))

* Add some rudimentary copy for the email ([`ea2129f`](https://github.com/svange/api-portal/commit/ea2129f2af59f3a4051aa2eeb7b2a82dc65a3d6b))

* Fix corrupted export functionality ([`76605bd`](https://github.com/svange/api-portal/commit/76605bd75c8b4169e523283a21d1fc0e414db2c1))

* Fix account functionality ([`e71ba86`](https://github.com/svange/api-portal/commit/e71ba863173d99cf4de6cb5aff14f95e947926f5))

* Forgot to push additional message tweak before merging ([`61e922a`](https://github.com/svange/api-portal/commit/61e922a33f742a8b65b1342d0f587dc09296878a))

* Merge pull request #362 from awslabs/meaisiah-tweaks

Tweak the UI and streamline the implementation in places, resolve various initial bugs ([`e35c251`](https://github.com/svange/api-portal/commit/e35c251a39a697200ec0e38015bda38aae6e5542))

* Update text explaining API non-subscribability ([`eeeb519`](https://github.com/svange/api-portal/commit/eeeb519d9b91bfb90feb3c53446417725a4e33f9))

* Fix SDK + export generation bug ([`4069b1c`](https://github.com/svange/api-portal/commit/4069b1ca628286286829499550e5fabf18ff09aa))

* Refactor + enhance tests, prevent a few potential unhandled rejections ([`02a3891`](https://github.com/svange/api-portal/commit/02a3891dd4e7a2febf3e7bdf4257254433135b8a))

* Fix search CTA to stay within the screen boundaries ([`40d8cc1`](https://github.com/svange/api-portal/commit/40d8cc142d5a76bbdcb4ad2ebcd4fd53e73207b9))

* Clarify search ([`eb2b1eb`](https://github.com/svange/api-portal/commit/eb2b1eb456ff5bcab2ba8021b67ea71673fa70b9))

* Make API search case-insensitive ([`af6f2d8`](https://github.com/svange/api-portal/commit/af6f2d8d1cab25af3db2fb7910315b743994ba30))

* Wrap all handlers to convert promise rejections to errors

Express doesn&#39;t play well with promises, and so this should help result
in far fewer *unhandled* promise rejections (making them handled and
more properly reported). ([`b1f2b80`](https://github.com/svange/api-portal/commit/b1f2b8072ff76b0ab2ee6c7f65d90cfcfb930070))

* Clarify admin nav ([`5eca782`](https://github.com/svange/api-portal/commit/5eca782757856e8d446952aa72352f5c1f47baf6))

* Make everything trees and make headers not look like links ([`2609c3a`](https://github.com/svange/api-portal/commit/2609c3a0d1a7dbc3ba74a501c16cea01e2515953))

* Streamline search, fix assorted errors ([`de47993`](https://github.com/svange/api-portal/commit/de4799325a9a3d2cb018a9d754b883f81da75a60))

* Update MobX, clean up a lot of code ([`7c1e240`](https://github.com/svange/api-portal/commit/7c1e2401efdf0b1923cf32ebd50115365b9ade15))

* Remove API subscribable/not categories, tweak API sidebar

The &#34;Search APIs&#34; button looked more like an API than a separate page,
so I moved it up and made it as a header to reduce the potential for
confusion. ([`e45a851`](https://github.com/svange/api-portal/commit/e45a851529cfb188bb95fd171a01124b24a83137))

* Remove client-side timeout, sync with server-side timeout ([`3d479e2`](https://github.com/svange/api-portal/commit/3d479e2b28057aa612c42bc33f58c2bc4672b4df))

* Tweak scripts, update dev portal dev README ([`35b4450`](https://github.com/svange/api-portal/commit/35b445066177ab362e03b6185d8f5397dee585b9))

* Fix some bugs in deployment and the backend

- CloudFormation was trying to overwrite existing tables
- The `accounts/*` routes weren&#39;t reaching far enough to get the utils
  module ([`28be1d8`](https://github.com/svange/api-portal/commit/28be1d8333440198e1cd9d4bee34e96e24012e23))

* Implement a session timeout (configurable) ([`5c51ce7`](https://github.com/svange/api-portal/commit/5c51ce7b6d06c50ab3c63f66221ce16037802c6b))

* Rip out mobile sidebar support ([`1dcf3a1`](https://github.com/svange/api-portal/commit/1dcf3a1baaef004ea17e5adbfa08fd6ae51c7cd0))

* Fix ESLint config so it inherits rules correctly.

My editor was misinterpreting it as the root and not properly applying
the rules from the parent. ([`b0e2cf1`](https://github.com/svange/api-portal/commit/b0e2cf169186e555a2da95d7be1415b8bafb1057))

* Fix npm audit issue, rebuild assets ([`fff3d74`](https://github.com/svange/api-portal/commit/fff3d74997273252c112e7c64cbcac4e6e338847))

* Merge pull request #357 from awslabs/meaisiah-stage-names

Show stage names with APIs ([`a7ae0c6`](https://github.com/svange/api-portal/commit/a7ae0c62030ba595fec6b27532143eb4cc6c8062))

* Tweak styling a little ([`3a877c3`](https://github.com/svange/api-portal/commit/3a877c378cecf3a4e7aa26ec95be6058afd8c4ad))

* Show stage names with APIs ([`ab2a944`](https://github.com/svange/api-portal/commit/ab2a944b81cd3400a04a0a04aea988533aa1342e))

* Merge pull request #358 from awslabs/meaisiah-account

Merge account management work ([`56c8e05`](https://github.com/svange/api-portal/commit/56c8e05d914943da6a53b4687490138a944e2ed4))

* Fix Swagger-related bug, tweak sidebar styles for better readability

Also, make `/admin` a proper redirect to `/admin/apis` instead of
letting it just be an alias. ([`b6c17f4`](https://github.com/svange/api-portal/commit/b6c17f4ea9ff260a4e720b6bc2d1ef60331f3c4c))

* Clean up tests and fix a few immediate issues ([`ef4f43f`](https://github.com/svange/api-portal/commit/ef4f43ffc736924a7bedc046e0054d3676a2410f))

* Eject from Standard to ESLint ([`a3cc2d0`](https://github.com/svange/api-portal/commit/a3cc2d0a09075e4044b375044224f9e36e478d8b))

* Merge 9c17ae1008dadd805a9385a4c1de1eb6c269ff39 into meaisiah-account ([`f7f4596`](https://github.com/svange/api-portal/commit/f7f45968a8e2ea481833530527ea38775e3d518a))

* Merge ec614df0cd4cfcc9b5ea2d60e6e0bb19522ce814 into meaisiah-account ([`db6e324`](https://github.com/svange/api-portal/commit/db6e32456ae778d32d977fffcae29bb82e6d21db))

* Merge pull request #361 from awslabs/meaisiah-description-fix

Hide description field when no description exists ([`18808b6`](https://github.com/svange/api-portal/commit/18808b60665babcee06c2ee4f2f981467e005dbd))

* Hide description field when no description exists ([`a870c03`](https://github.com/svange/api-portal/commit/a870c03f66e988230cbd97cca99b4de2200e229a))

* Merge pull request #359 from awslabs/meaisiah-limit-increase

Increase limit to allow for larger API imports/etc. ([`5635fa6`](https://github.com/svange/api-portal/commit/5635fa63ccec5e9bf68fe8b10615dc3ec69a9146))

* Increase limit to allow for larger API imports/etc. ([`f7555df`](https://github.com/svange/api-portal/commit/f7555df9ca851e6828295a772347b734ba24a440))

* Merge pull request #360 from awslabs/meaisiah-description

Add description ([`131293e`](https://github.com/svange/api-portal/commit/131293e13d1f60fb4c5cc02db9ed0254aa600a23))

* Add description ([`fcf63a9`](https://github.com/svange/api-portal/commit/fcf63a9b031db1d6fd380a7f995d3c4c3679654a))

* Merge pull request #350 from awslabs/meaisiah-export

Implement support for exporting Swagger/OpenAPI definitions, clean up backend lambda ([`36f9338`](https://github.com/svange/api-portal/commit/36f93389ab555eadab6c2e3eb5bf98ec9aba91fb))

* Resolve npm audit issues ([`1d212ae`](https://github.com/svange/api-portal/commit/1d212aeadc005ee75a2609a3d8f8db88ecc8c856))

* Merge account-mgmt into meaisiah-account ([`9c17ae1`](https://github.com/svange/api-portal/commit/9c17ae1008dadd805a9385a4c1de1eb6c269ff39))

* Merge 31e2eab70a290aa282bde38e8ffc137505bc57ee into meaisiah-account ([`ec614df`](https://github.com/svange/api-portal/commit/ec614df0cd4cfcc9b5ea2d60e6e0bb19522ce814))

* Merge a41e8c36ba10d8812ca7add4bc599aca86e9e59c into meaisiah-account ([`cd582db`](https://github.com/svange/api-portal/commit/cd582db38ef74a6fb4f94987c8a7fc3102db4eaf))

* Merge a49fdde1ca9f56622e89a3467e15bb78f8a6c929 into meaisiah-account ([`65bfb69`](https://github.com/svange/api-portal/commit/65bfb694c07f3f760cb186dfb289a1c7e9c747f2))

* Rebuild assets ([`ca971f3`](https://github.com/svange/api-portal/commit/ca971f3f11410ade7b24e4e81fe6c3768b115468))

* Fix a bunch of bugs, write tests for export generation ([`c10944d`](https://github.com/svange/api-portal/commit/c10944d4ec6de0d183cf51a772be270f58b5bfb9))

* Switch YAML vs JSON to radio buttons for clarity ([`9345b2c`](https://github.com/svange/api-portal/commit/9345b2c67ae36357181c7dcbcce391188c1d7fbc))

* Remove catalog caching skeleton ([`24ebfa1`](https://github.com/svange/api-portal/commit/24ebfa1503af421ed63bd004c3770564bdf09a02))

* Modularize lambdas/backend, simplify tests, remove unused code ([`7baa010`](https://github.com/svange/api-portal/commit/7baa010f61cec2707655632cb467d9de58403ffd))

* Support exporting Swagger/OpenAPI definitions

All the various extensions listed in the docs are also supported,
including Postman extensions, x-amazon-apigateway-integration
extensions, x-amazon-apigateway-authorizers extensions, and combinations
of all three. You can also choose whether to export as YAML or JSON.
It&#39;s a separate dropdown, but reuses the same modal, and it just
delegates to AWS in a lambda to generate the export. (The logic is
nearly identical to the SDK generation.) ([`c36c83e`](https://github.com/svange/api-portal/commit/c36c83e9112e84f0011fbfbd704a741a02d27c37))

* Minor tweak to name, add a file to .gitignore ([`eb0ba97`](https://github.com/svange/api-portal/commit/eb0ba979629c60f075a1512dbfaec68aa99e38c5))

* Rebuild assets ([`6d1bc08`](https://github.com/svange/api-portal/commit/6d1bc08c5f6210374a09f836697b297774d83bfd))

* Fix a bunch of bugs, write tests for export generation ([`ade3138`](https://github.com/svange/api-portal/commit/ade3138e5b4eb86129ed1b325ef9116f8e596971))

* Switch YAML vs JSON to radio buttons for clarity ([`b806c70`](https://github.com/svange/api-portal/commit/b806c70bd039a64013b8f090b641cc8f93d71447))

* Remove catalog caching skeleton ([`0aebdf1`](https://github.com/svange/api-portal/commit/0aebdf151673b670d838463133daa3f256b00592))

* Modularize lambdas/backend, simplify tests, remove unused code ([`1eebaff`](https://github.com/svange/api-portal/commit/1eebaff430ead2c06945134a99020015803596fb))

* Support exporting Swagger/OpenAPI definitions

All the various extensions listed in the docs are also supported,
including Postman extensions, x-amazon-apigateway-integration
extensions, x-amazon-apigateway-authorizers extensions, and combinations
of all three. You can also choose whether to export as YAML or JSON.
It&#39;s a separate dropdown, but reuses the same modal, and it just
delegates to AWS in a lambda to generate the export. (The logic is
nearly identical to the SDK generation.) ([`df3d39b`](https://github.com/svange/api-portal/commit/df3d39b8a697398277d2d2b0e52eca2ad9d9da65))

* Merge pull request #347 from awslabs/meaisiah-staging

Merge `staging` branch work, Switch from Prettier to Standard, clean up static asset uploader ([`eb28123`](https://github.com/svange/api-portal/commit/eb281230a6c3c3c52d7fb94afc8e26a0b939edbc))

* Rebuild assets ([`0f33a15`](https://github.com/svange/api-portal/commit/0f33a15ece7874d65d67f750a9e31d5d56f93569))

* Unbreak scrolling ([`f604ab7`](https://github.com/svange/api-portal/commit/f604ab7127e4c33c080a626752c070ef06c49cc8))

* Rebuild assets ([`8fc4df0`](https://github.com/svange/api-portal/commit/8fc4df0aa3ff42baa1c90abc29d00cd84be0a169))

* Update dependencies ([`1b297da`](https://github.com/svange/api-portal/commit/1b297da44760fde676b777bbed2ae2c1d73c7605))

* Simplify static asset uploader, remove most of its dependencies ([`cb37c8a`](https://github.com/svange/api-portal/commit/cb37c8ad50ec628a2f11f6ecb0313a062eaa6064))

* Add a local dev mode ([`1e6962e`](https://github.com/svange/api-portal/commit/1e6962e8824ac364dba9053d10b4e4dc822b6478))

* Fix spelling, fix loose end missed in merge ([`8c84f9d`](https://github.com/svange/api-portal/commit/8c84f9d6e85f06113b8ccc1228d4449d513fb89c))

* Prettier -&gt; Standard ([`f0018a4`](https://github.com/svange/api-portal/commit/f0018a4b7eb8995a0fac773ae725004b80257d82))

* Merge origin/staging into meaisiah-staging ([`7d416d5`](https://github.com/svange/api-portal/commit/7d416d5441ec8318319085e395a1a635cf51c58a))

* Merge pull request #344 from awslabs/meaisiah-build-fix

Fix dev setup scripts + related docs for dev portal, remove autogenerated assets ([`6ce560a`](https://github.com/svange/api-portal/commit/6ce560a97e7868f8e2dddd5decec102a4b4a9747))

* Merge branch &#39;meaisiah-build-fix&#39; of github.com:awslabs/aws-api-gateway-developer-portal into meaisiah-build-fix ([`2ea8417`](https://github.com/svange/api-portal/commit/2ea8417b0891e287c2bd1bcb17033d7eb3e9152b))

* Fix dev portal setup scripts + docs, list generated assets as binary ([`08438f9`](https://github.com/svange/api-portal/commit/08438f90750979f4f9ede386123c73f9cb9a6a9c))

* Merge pull request #345 from awslabs/update-code-owners

Add myself to the list of code owners ([`051b423`](https://github.com/svange/api-portal/commit/051b423e26dbd13458fa7af5e4101590e396e65d))

* Update CODEOWNERS

Co-Authored-By: Than Hutchins &lt;nhutch@amazon.com&gt; ([`c522bb2`](https://github.com/svange/api-portal/commit/c522bb27039b6b773b84a66373cc3af1d36fd65b))

* Update CODEOWNERS

Co-Authored-By: Than Hutchins &lt;nhutch@amazon.com&gt; ([`90f7096`](https://github.com/svange/api-portal/commit/90f70962ed67987f758c374ade1bb5e81ee93eff))

* Update CODEOWNERS ([`e916f78`](https://github.com/svange/api-portal/commit/e916f78ff764eea7273cbbfb64b95d2960a04542))

* Add myself to the list of code owners ([`e0a4f11`](https://github.com/svange/api-portal/commit/e0a4f117e18ac5f0ed7e215ba0c286e291bfb981))

* Fix dev portal setup scripts + docs, list generated assets as binary ([`5f27bbf`](https://github.com/svange/api-portal/commit/5f27bbf24eb3edb047ae7e22349609db66364dee))

* Merge pull request #331 from awslabs/dependabot/npm_and_yarn/dev-portal/lodash-4.17.13

Bump lodash from 4.17.11 to 4.17.13 in /dev-portal ([`37d073b`](https://github.com/svange/api-portal/commit/37d073b5d1598fab144238861b265e4ca77d04b5))

* Bump lodash from 4.17.11 to 4.17.13 in /dev-portal

Bumps [lodash](https://github.com/lodash/lodash) from 4.17.11 to 4.17.13.
- [Release notes](https://github.com/lodash/lodash/releases)
- [Commits](https://github.com/lodash/lodash/compare/4.17.11...4.17.13)

Signed-off-by: dependabot[bot] &lt;support@github.com&gt; ([`348516b`](https://github.com/svange/api-portal/commit/348516bb82cebfb693392c73035d61963f1b1968))

* Merge pull request #330 from awslabs/patch-node

upgrade lambda runtime to node 12 and npm audit fix ([`ac79bf2`](https://github.com/svange/api-portal/commit/ac79bf2f4fa28526be2d8d4fb6a22705cc6a5202))

* upgrade lambda runtime to node 12 and npm audit fix

👷 This is a maintenance PR.
🚫 The Lambda `nodejs8.10` runtime is being deprecated.
⬆️ Updating the Node.js runtime to `nodejs12.x` ([`7dfea12`](https://github.com/svange/api-portal/commit/7dfea1207636c72df09ca864855c4d809587e6ab))

* Merge pull request #308 from alex-chew/account-mgmt-backend-pr

Implement account management backend ([`bae22ce`](https://github.com/svange/api-portal/commit/bae22ce3abdd2a6800380250945e0fb246814444))

* Merge pull request #301 from gbroques/feature/make-more-mobile-friendly

Make Developer Portal More Mobile Friendly ([`27043f9`](https://github.com/svange/api-portal/commit/27043f9659a287483c48829583265a31304b8f19))

* WIP Fix some tests

(The &#34;ensureCustomerItem backfills UserPoolId&#34; test has been removed
 since we no longer require backfilling UserPoolId.) ([`02551e7`](https://github.com/svange/api-portal/commit/02551e758ce3e0cdfde0b538ba5568330053ae47))

* Implement account management backend ([`32a58df`](https://github.com/svange/api-portal/commit/32a58dfd2dfd16746c48dd824a01ec541d58e241))

* Format files to be changed in account-mgmt-backend branch ([`086a3b6`](https://github.com/svange/api-portal/commit/086a3b618b2186ca7bfa26c499d8972dbcd50ff0))

* Merge pull request #306 from alex-chew/fix-account-field-names

Fix account field names in frontend ([`31e2eab`](https://github.com/svange/api-portal/commit/31e2eab70a290aa282bde38e8ffc137505bc57ee))

* Fix missing account field renames in mock service ([`be626e9`](https://github.com/svange/api-portal/commit/be626e94de573f515874f63d82430391a9c931d5))

* Fix account field names (upcase; change *PoolId to *Id) ([`7cee9bf`](https://github.com/svange/api-portal/commit/7cee9bf0ca9d4680717e1c60b29826ad09646129))

* Merge pull request #305 from alex-chew/list-pending-invites-ui

List pending invites UI ([`297976f`](https://github.com/svange/api-portal/commit/297976ffb6b28109c841abb13e4b3410fc241140))

* PendingInvites: remove unnecssary React.memo&#39;s ([`ae5f7fa`](https://github.com/svange/api-portal/commit/ae5f7faeecc06ae6c551ee33ce513cebffcb3ce2))

* PendingInvites: don&#39;t say creation failed if UI code fails ([`cbf8463`](https://github.com/svange/api-portal/commit/cbf846352f49af39fe1b8b9b0a1bde3e00027333))

* PendingInvites: close/reset Create modal only if creation succeeds ([`7f83aa0`](https://github.com/svange/api-portal/commit/7f83aa0be8bda0324dccbbf3f4d9499209a79112))

* MessageList: refactor to avoid components in state ([`74b505c`](https://github.com/svange/api-portal/commit/74b505c12a962a61e0092ad249ec31719b19e1c0))

* PendingInvites: show &#34;Please enter a valid email address&#34; in Create modal ([`4e9fd56`](https://github.com/svange/api-portal/commit/4e9fd567c9a9c12c8b3e0dee84155ee8de94c777))

* PendingInvites: change some Create modal wording ([`334bb0b`](https://github.com/svange/api-portal/commit/334bb0b64cafbef70b4219fbea380c39119ecaf1))

* Add PendingInvites UI ([`885dec9`](https://github.com/svange/api-portal/commit/885dec90df37cb3d820013202dc85575f9e441e8))

* Merge pull request #304 from alex-chew/list-pending-requests-ui

List pending requests UI ([`a41e8c3`](https://github.com/svange/api-portal/commit/a41e8c36ba10d8812ca7add4bc599aca86e9e59c))

* PendingRequests: fix missing account loading after denying an account ([`263ffec`](https://github.com/svange/api-portal/commit/263ffec95f38dd0480db551941b7b3214cb3298a))

* PendingRequests: fix wording in Deny modal ([`0f75825`](https://github.com/svange/api-portal/commit/0f75825b5576a9af01e07ed1b7868583af0ef94b))

* Add PendingRequests UI ([`3e0ef7b`](https://github.com/svange/api-portal/commit/3e0ef7b4ccc82bbfc69cbe8ab9016027b2eb6d93))

* Merge pull request #303 from alex-chew/list-admin-accounts

List admin accounts UI ([`4c30cce`](https://github.com/svange/api-portal/commit/4c30cceddd424736e34205675e81d547f137b6ab))

* AccountsTable: typo and formatting ([`77a951d`](https://github.com/svange/api-portal/commit/77a951de0971d9a40a91f7c80f2e76a599634d95))

* RegisteredAccounts: use waitForAccountsToLoad from accounts-test-utils ([`1d9e21b`](https://github.com/svange/api-portal/commit/1d9e21b9293ef2e64e5680b12db657267ffa8717))

* Rename AccountsTestUtils -&gt; accounts-test-utils ([`16ec012`](https://github.com/svange/api-portal/commit/16ec0125ed750ae26a85a2a039d6bf7446b07b20))

* AccountsTestUtils: add docs ([`cb02023`](https://github.com/svange/api-portal/commit/cb02023c9c2134d025caca1668edb7eb0cd10653))

* AdminAccounts: clean up tests ([`0d2c1b5`](https://github.com/svange/api-portal/commit/0d2c1b5575e3392efaccd5fcfcdc6a57fa251c62))

* AdminAccounts: extract Accounts-related test utils to own file ([`5d40fd8`](https://github.com/svange/api-portal/commit/5d40fd8edbff0777e4631e9d88fce540c7df6933))

* Add AdminAccounts page ([`ff3dae3`](https://github.com/svange/api-portal/commit/ff3dae329dc731ff5570de07898db24400042321))

* Move React 16.8 act() warning suppression into test-utils ([`768fba5`](https://github.com/svange/api-portal/commit/768fba550b4965d7827842f1b51467653607f7f1))

* Merge pull request #298 from alex-chew/list-registered-accounts-pr

Implement &#34;Registered Accounts&#34; admin page ([`a49fdde`](https://github.com/svange/api-portal/commit/a49fdde1ca9f56622e89a3467e15bb78f8a6c929))

* Merge branch &#39;staging&#39; into feature/make-more-mobile-friendly ([`ffc974a`](https://github.com/svange/api-portal/commit/ffc974a338084218f3ccffddc4307163d8af62a9))

* Change content prop to children for &lt;PageWithSidebar /&gt; component ([`9be4461`](https://github.com/svange/api-portal/commit/9be4461d1106e0bd83dd1a910ad0d075b216cee3))

* MessageList: simplify usage ([`f68c454`](https://github.com/svange/api-portal/commit/f68c4540ea7926b952c3dc65397157efa9233721))

* AccountsTable: simplify filter/order state hooks ([`c654202`](https://github.com/svange/api-portal/commit/c6542024a59310764319a81b18edecb4175474aa))

* Merge branch &#39;staging&#39; into list-registered-accounts-pr ([`2d32081`](https://github.com/svange/api-portal/commit/2d32081e36ef395f8ef8c9021a8f589dbe3d408e))

* Merge pull request #302 from alex-chew/fix-prettier-config

Fix malformed prettier config ([`6946911`](https://github.com/svange/api-portal/commit/6946911f2129bebfcca570347cbc946a3b945d92))

* Fix malformed prettier config ([`f5de0f6`](https://github.com/svange/api-portal/commit/f5de0f643cd65c4cb6c0b657da72e4d48350af25))

* Merge branch &#39;staging&#39; into list-registered-accounts-pr ([`13a5dd5`](https://github.com/svange/api-portal/commit/13a5dd5ddeb06980a8088d5a8662de3cbb1ad21a))

* AccountsTable: fix redundant/missing hook dependencies ([`bcca902`](https://github.com/svange/api-portal/commit/bcca9025a6b18349cee3fa46d2a7e49950e742f4))

* RegisteredAccounts: typo ([`594f375`](https://github.com/svange/api-portal/commit/594f375e59ebfe59060dbefc2dae358a82742247))

* RegisteredAccounts: magic numbers begone ([`ab5a860`](https://github.com/svange/api-portal/commit/ab5a860293415f7a4fb88dc83535407fd4a81d12))

* Admin: clean up an import statement ([`959f213`](https://github.com/svange/api-portal/commit/959f21393781964b7dc271d883f612dacfa7f902))

* RegisteredAccounts: clarify filter/order test expected values ([`7a2172c`](https://github.com/svange/api-portal/commit/7a2172c6e683468cb9f426f010ee8af590c8dd23))

* AccountsTable: export default page size ([`aaf3b9a`](https://github.com/svange/api-portal/commit/aaf3b9a3c111ee1602da8f7ebaa7f9f019552fd6))

* RegisteredAccounts: move message types to top of file ([`8c26a91`](https://github.com/svange/api-portal/commit/8c26a9103a27c0dbff08736eeef9957866df7c89))

* RegisteredAccounts: clarified wording in delete/promote modals ([`b2d94f5`](https://github.com/svange/api-portal/commit/b2d94f54e653fb4ac8edad556cfd23743e7a4e7f))

* AccountsTable: refactor order directions to use circular array ([`6db1511`](https://github.com/svange/api-portal/commit/6db1511eff0d29ec1d1545d97e78602598a016c3))

* Merge branch &#39;staging&#39; into feature/make-more-mobile-friendly ([`a24ab2f`](https://github.com/svange/api-portal/commit/a24ab2fff96d006af443b4414fa53879d92881ef))

* Merge pull request #300 from alex-chew/configure-prettier

Add and configure Prettier ([`e3f6de8`](https://github.com/svange/api-portal/commit/e3f6de88db07e9b3f25271a01fe99e3008676c88))

* Merge branch &#39;staging&#39; into configure-prettier ([`bda3e12`](https://github.com/svange/api-portal/commit/bda3e125cc40c0702f5a7c8f858c94b8e671b4f2))

* Simplify checkMobileScreenResolution() method ([`50c5d42`](https://github.com/svange/api-portal/commit/50c5d42253c6208d95e68c4899888794b73604fa))

* Make more mobile friendly (Closes #269) ([`edcf770`](https://github.com/svange/api-portal/commit/edcf770678dabba094061bc477fbe4870f841779))

* Move test utils out of real-test scope ([`6b89bf4`](https://github.com/svange/api-portal/commit/6b89bf46970d3c3cb698e7af16f57de3fb00d939))

* Configure prettier ([`40283cf`](https://github.com/svange/api-portal/commit/40283cf67211a1e5a4d63c1eef7f4dd315f0a5e6))

* Implement &#34;Registered Accounts&#34; admin page ([`548dcc9`](https://github.com/svange/api-portal/commit/548dcc9c924a47d3c0bc7d2e7646888836b53d54))

* Merge pull request #295 from alex-chew/dump-v3-account-data-pr

Add lambda and script to dump v3 account data ([`c67569c`](https://github.com/svange/api-portal/commit/c67569c7ba7bb60b19049eb7d3fe2137d8eeaabf))

* Fix doc typo in DumpV3AccountData lambda ([`eaa602c`](https://github.com/svange/api-portal/commit/eaa602cfcea3e8606d3d8ea935804e7b55371572))

* Document dev-porta-common/pager/fetchAllItems ([`a9edb38`](https://github.com/svange/api-portal/commit/a9edb3830983d396e10e96c463b697dbe7da174d))

* Move DumpV3AccountDataFn runtime to nodejs10.x ([`526a21e`](https://github.com/svange/api-portal/commit/526a21e399c5a9babeb36fdaebec31c9d68bc599))

* Add lambda and script to dump v3 account data ([`76b7e33`](https://github.com/svange/api-portal/commit/76b7e33adcf0c95f451d456ecfbc9f9fd741be89))

* Merge pull request #294 from alex-chew/setup-ui-testing

Set up UI tests with React Testing Library ([`16ea653`](https://github.com/svange/api-portal/commit/16ea653460d4de111a2dc89448e71984d1b7dbe1))

* Merge branch &#39;staging&#39; into setup-ui-testing ([`4a554b2`](https://github.com/svange/api-portal/commit/4a554b2055ea71ce2602e104e98a2142bd18b414))

* Merge pull request #293 from alex-chew/lambda-common-layer-pr

Set up lambda layer for common code used in lambdas ([`dc04c89`](https://github.com/svange/api-portal/commit/dc04c8931c9e697b72c6e929d963adf1e127c234))

* Add rudimentary tests for HomePage ([`36710cf`](https://github.com/svange/api-portal/commit/36710cfeb9bbbfe0d4f47ab46ba5b01b3f812c01))

* Rebuild StaticAssetUploader ([`2f30d2a`](https://github.com/svange/api-portal/commit/2f30d2ac81422081643ebab6db240b2dae95546f))

* Set up lambda layer for common code used in lambdas ([`6c94a50`](https://github.com/svange/api-portal/commit/6c94a5034eb46adb8c307ffecb1634c4eaf56fd5))

* Don&#39;t load fragments immediately in get-fragments ([`6b0e254`](https://github.com/svange/api-portal/commit/6b0e254912c48999e6e0cf4642d91d475858cdb9))

* Merge pull request #290 from awslabs/staging

Merge v3.0.2 to master ([`bf3d87f`](https://github.com/svange/api-portal/commit/bf3d87fd50bc5bad4297aabb1e8588a10c8a2ac8))

* Merge pull request #289 from alex-chew/fix-dev-mode-login-logout-redirect

Fix dev mode login/logout redirect ([`84bd22c`](https://github.com/svange/api-portal/commit/84bd22c9e9e2494bf33c116c10ca3a85fb81c1f2))

* Lambda build assets ([`1239363`](https://github.com/svange/api-portal/commit/1239363eb655947abe841a7e2425a84d76173a2b))

* Fix dev mode login/logout redirect ([`30da724`](https://github.com/svange/api-portal/commit/30da724348872042b0aec470b62f4d86b9741733))

* Bump version to v3.0.2 ([`02db7ba`](https://github.com/svange/api-portal/commit/02db7baa08487e49b00304528dc2db45320f7993))

* Build assets for v3.0.2 ([`0613839`](https://github.com/svange/api-portal/commit/061383921f2d884c46eda0a9009a227916c260c9))

* Merge branch &#39;fix-npm-audit-warnings&#39; of https://github.com/alex-chew/aws-api-gateway-developer-portal into staging ([`0378040`](https://github.com/svange/api-portal/commit/037804050634155443d1cb1b2f384bcabb7a1860))

* Merge pull request #281 from alex-chew/fix-asset-uploader-error-logging

Fix some asset uploader error cases ([`b3a9f66`](https://github.com/svange/api-portal/commit/b3a9f6635ec90602689ecc1654d02cb0be9b5310))

* Merge branch &#39;staging&#39; into fix-asset-uploader-error-logging ([`0c0e317`](https://github.com/svange/api-portal/commit/0c0e3176393ec884b00d4b8db7fec7a45479dd26))

* Merge pull request #285 from alex-chew/fetch-all-usage-plan-pages

Fetch all usage plan pages ([`9a4a214`](https://github.com/svange/api-portal/commit/9a4a21431deadde961721a10cc4c22366e2a0c4d))

* Merge branch &#39;staging&#39; into fetch-all-usage-plan-pages ([`02c0274`](https://github.com/svange/api-portal/commit/02c02744b3ebf0fdcd04818e38a15cfcf3b05e04))

* Merge pull request #270 from Russ-K/issue/247/booleans

Add validation for boolean CloudFormation template parameters ([`64e820c`](https://github.com/svange/api-portal/commit/64e820cf0297534a39640ed54bb69b4a16135778))

* Merge branch &#39;staging&#39; into issue/247/booleans ([`653b708`](https://github.com/svange/api-portal/commit/653b70805db4f24b078eda94a94e82415222465f))

* Merge pull request #271 from Russ-K/issue/247/rebuildmode

Add validation for the rebuild mode CloudFormation template parameter ([`dc94f48`](https://github.com/svange/api-portal/commit/dc94f48679f0ad97e1556ac4581b13742f2b4629))

* Merge branch &#39;staging&#39; into issue/247/booleans ([`9c279e4`](https://github.com/svange/api-portal/commit/9c279e476ab415a330833db4c06f249de1306445))

* Merge branch &#39;staging&#39; into issue/247/rebuildmode ([`fac17c5`](https://github.com/svange/api-portal/commit/fac17c55018cbafbedc0d156788fca074fad75a5))

* Merge pull request #283 from alex-chew/reformat-readme-commands

Reformat README setup commands ([`44d91cc`](https://github.com/svange/api-portal/commit/44d91cc6ec180abe9d77e082d033c8fc9553c361))

* Merge branch &#39;staging&#39; into reformat-readme-commands ([`f3459c7`](https://github.com/svange/api-portal/commit/f3459c704ac639a374b11613d74e920c8dd55848))

* Merge pull request #284 from alex-chew/get-deps-npm-install

Run `npm install` upon `npm run get-dependencies` ([`a9afb9e`](https://github.com/svange/api-portal/commit/a9afb9e78a08e589928187d5b4b7aa5e9b4eefaf))

* Merge branch &#39;staging&#39; into fix-asset-uploader-error-logging ([`b6a7c85`](https://github.com/svange/api-portal/commit/b6a7c858cdbcb44e79f58d40fb01f208e276f0f0))

* Use patched swagger-ui fork to fix UI debounce bug ([`a4c2ef0`](https://github.com/svange/api-portal/commit/a4c2ef0ccdd7d83b8f503ffdf96115ca3f206c0d))

* Merge branch &#39;staging&#39; into get-deps-npm-install ([`ef5a65c`](https://github.com/svange/api-portal/commit/ef5a65c244cefb6ac6c6c63016d8b4ba9f19a587))

* Merge branch &#39;staging&#39; into reformat-readme-commands ([`64fb60a`](https://github.com/svange/api-portal/commit/64fb60a19d361e11fd252bbc6f9662577b7c1e7d))

* Merge pull request #282 from alex-chew/fix-dev-mode-index-html

Fix dev mode index html ([`a3f9d2d`](https://github.com/svange/api-portal/commit/a3f9d2d28f209fa953aed43c9ff5747ce41ac12f))

* Update package-lock.json&#39;s ([`9dfe539`](https://github.com/svange/api-portal/commit/9dfe539f8f578275948df8e96a70cb8bd193d9a5))

* Remove deprecated NODE_PATH from .env

See https://github.com/facebook/create-react-app/pull/6656 ([`9a681a5`](https://github.com/svange/api-portal/commit/9a681a5d7baa299d413896f75d2b014484142987))

* Upgrade to react-scripts=^3.0.1, swagger-ui=3.22.3 ([`52c80bb`](https://github.com/svange/api-portal/commit/52c80bbfc0da2515617a5aa896e592df1181a10e))

* Fix misnamed error argument in createSdkGenerationFile ([`0a078d1`](https://github.com/svange/api-portal/commit/0a078d176e5a0533b0037a25e9dd6ce7d823da86))

* Merge branch &#39;staging&#39; into fetch-all-usage-plan-pages ([`0396f0a`](https://github.com/svange/api-portal/commit/0396f0abb65a1b922c269e9d8d673672e6187e50))

* Add unit tests for getAllUsagePlans ([`846992a`](https://github.com/svange/api-portal/commit/846992ab8f0f9f168f7441eaae6e17ccb457dcdd))

* Merge branch &#39;staging&#39; into get-deps-npm-install ([`2dbdf08`](https://github.com/svange/api-portal/commit/2dbdf089174068fd5be26f59477b920abad6bfd5))

* Run `npm install` upon `npm run get-dependencies` ([`2ac23ae`](https://github.com/svange/api-portal/commit/2ac23ae2f5d114876853b453b3abe00c3e84146c))

* Fetch all usage plans in DevPortalLambda ([`34dd2f4`](https://github.com/svange/api-portal/commit/34dd2f44d071091a3a7117ab895624de285ca851))

* Move getAllUsagePlans to a &#34;shared&#34; file ([`6cdc771`](https://github.com/svange/api-portal/commit/6cdc771910dae303e84480871c0a189d92ad94e6))

* Fetch all usage plan pages in catalog updater ([`5bf6b1c`](https://github.com/svange/api-portal/commit/5bf6b1c5ae816a268b9a30e72dc4e3f3417eb475))

* Merge branch &#39;staging&#39; into fix-asset-uploader-error-logging ([`7f680be`](https://github.com/svange/api-portal/commit/7f680be8bc4d73ca7a54cf5ab14522edfdfbc082))

* Merge branch &#39;staging&#39; into fix-dev-mode-index-html ([`11ee9f9`](https://github.com/svange/api-portal/commit/11ee9f93c89ca131636943198901ae9de22ab4be))

* Reformat README Setup section for improved readability ([`ba9825c`](https://github.com/svange/api-portal/commit/ba9825c654710ba7d54d24f00bef0996f49ec057))

* Redirect index.html to root in frontend router (fixes #260) ([`4dcd576`](https://github.com/svange/api-portal/commit/4dcd576d768aec22810b28d036bf271d31f4e011))

* Fix some logging for asset uploader error cases ([`fff8def`](https://github.com/svange/api-portal/commit/fff8def26dc65de82c4dd2500adbca24de2f7e8a))

* Merge pull request #266 from awslabs/a-tan-patch-1

Fixing deadlink ([`dbe928a`](https://github.com/svange/api-portal/commit/dbe928a4b0b52abc2c64bd9b28f918e7bdf1f094))

* Add validation for the rebuild mode ([`cd935d9`](https://github.com/svange/api-portal/commit/cd935d9da1275dc39b97453c831c74cc0cc66a25))

* Add validation for boolean parameters ([`0619a8c`](https://github.com/svange/api-portal/commit/0619a8c65a6f5920895dfcea7a40d8e51ba8eb02))

* Update README.md ([`c447bfc`](https://github.com/svange/api-portal/commit/c447bfc1dda57d486d75436d6d8a57236efc89eb))

* Fixing deadlink ([`5c1b978`](https://github.com/svange/api-portal/commit/5c1b9784e52ee44d54f3205ebf8e18ebbd2df611))

* Merge pull request #265 from danielesalvatore/master

Add optional AWS SAM CLI profile option to be used to interact with A… ([`4bf4381`](https://github.com/svange/api-portal/commit/4bf4381eeb410415b4b96652051077947f353c72))

* Merge branch &#39;staging&#39; into master ([`2c17380`](https://github.com/svange/api-portal/commit/2c17380e583a19d6f91fa1a109333b7ccdd4fac6))

* Merge pull request #264 from awslabs/Trial-In-Error-patch-1

Update description of overwrite-content ([`c172292`](https://github.com/svange/api-portal/commit/c17229235397190d2f1b9b077923054b059772a2))

* Optinally include AWS SAM CLI profile option also in the write-config.js ([`44b4dc7`](https://github.com/svange/api-portal/commit/44b4dc7e44ae163b07111a5567bad61a24398cb4))

* Add optional AWS SAM CLI profile option to be used to interact with AWS API. ([`c5353f5`](https://github.com/svange/api-portal/commit/c5353f5e958f2137244d4c1e3b3ffd1d17fafec9))

* Update description of overwrite-content

Should be overwrite-content, not overwrite_content:
https://github.com/awslabs/aws-api-gateway-developer-portal/issues/263#issuecomment-494753756 ([`f1806d4`](https://github.com/svange/api-portal/commit/f1806d4bbd9fa83deee302fe509dabc19e5a90b8))

* Merge pull request #262 from awslabs/staging

v3.0.1 ([`d362bab`](https://github.com/svange/api-portal/commit/d362babf71944ec576e64177759410578147ecb9))

* Merge branch &#39;master&#39; into staging ([`03d605c`](https://github.com/svange/api-portal/commit/03d605cbe5b723cffa677b0fa080dada8aa5c5e1))

* Update static assets for v3.0.1 ([`13c850f`](https://github.com/svange/api-portal/commit/13c850f9da2626b2259658c32dfe400dcf643c38))

* Update version stamps for v3.0.1 ([`be6a7f9`](https://github.com/svange/api-portal/commit/be6a7f9bb4c46e4ea10a44689340ff9746f6638a))

* Update jest version ([`17e67ca`](https://github.com/svange/api-portal/commit/17e67ca03a782d9055ec0ed79ffb12d7fcf7fcd3))

* Merge pull request #261 from markcarroll/staging

Fix bug where wrong origin set on API CORS policy ([`b5cba88`](https://github.com/svange/api-portal/commit/b5cba88a62df140e3a02b7d794f1519900d74042))

* Remove WWW. from domain definition to solve CORS and Cert issues ([`82de394`](https://github.com/svange/api-portal/commit/82de3946a949fd27677621acc3f9a43c0ef83ddf))

* #255 Fix bug where wrong origin set on API CORS policy

When CustomDomainName set, the origin set on the API gateway CORS headers is the CloudFront URL not the custom
one that the caller will actually be coming from. This fix changes the CORS header to be the custom URL ([`7ea0e24`](https://github.com/svange/api-portal/commit/7ea0e24a80646b227ca0fc19034858034125104b))

* Merge pull request #252 from awslabs/staging

v3.0.0 ([`7d09ef1`](https://github.com/svange/api-portal/commit/7d09ef102fef3a2e92a578a6fbfdf6206e76c6c1))

* Merge pull request #250 from awslabs/v3

v3.0.0 ([`c450eed`](https://github.com/svange/api-portal/commit/c450eed7457f032891f663ec3c4ada363aa5aab6))

* Update static assets for v3.0.0 ([`066a17b`](https://github.com/svange/api-portal/commit/066a17bda46a7aa7457e5bf401c364c6b3e19cf9))

* Revert changes to swagger-ui ([`58bfeaf`](https://github.com/svange/api-portal/commit/58bfeaf569b8b600bb53b7d10662034b10bbff9a))

* Update version stamps for v3.0.0 ([`68e8716`](https://github.com/svange/api-portal/commit/68e8716d11610d6dcc71c1b0951bd172e126656b))

* Fix bug with catalog updater and tests ([`5ca1263`](https://github.com/svange/api-portal/commit/5ca1263a515f7bd9ebf03e2e3820ce33c7e0abc4))

* Update README for v3.0.0 ([`6b096cc`](https://github.com/svange/api-portal/commit/6b096cc28643882cb50a94f62c109a335d2570cb))

* Fix custom error responses ([`f931e99`](https://github.com/svange/api-portal/commit/f931e99d650100691dca34b0c2985150c277c1f8))

* Break build if dev portal build fails ([`de55056`](https://github.com/svange/api-portal/commit/de55056481a69852abdc31efc911413a8de33aa6))

* Fix backend more ([`4615767`](https://github.com/svange/api-portal/commit/46157671774dfbb748a539426e09bc5a1421fab7))

* Fix unit tests ([`39bd813`](https://github.com/svange/api-portal/commit/39bd813eedac813e86074793647a101cd6dde04c))

* Fix backend ([`591a30d`](https://github.com/svange/api-portal/commit/591a30d2123b1cdab6f740a4791fdd14982bc3ab))

* Fix unit tests ([`3fb6692`](https://github.com/svange/api-portal/commit/3fb6692da315f61a6137a91f5b66d453bc2934d6))

* Update state with visibility info ([`d483a66`](https://github.com/svange/api-portal/commit/d483a6666476e899ad934a20aa447168386b0380))

* Reload visibility on STS token exchange ([`5d07903`](https://github.com/svange/api-portal/commit/5d0790342e6ea0a32bb72554d9097b2c69cbcac8))

* Fix bug with admin panel table ([`c3cdbe3`](https://github.com/svange/api-portal/commit/c3cdbe349cc27b2dd84303deee405f31004b8e2b))

* Fix Java SDK title ([`5078318`](https://github.com/svange/api-portal/commit/50783186c9db438568ab494fce7d047a5e920b93))

* Admin panel now uses store instead of state

Fixes tab switching / first page load issues ([`ca599c3`](https://github.com/svange/api-portal/commit/ca599c36f2c4b0853c5aef9aa776d93fcca04266))

* Update subscription logic ([`bc854b1`](https://github.com/svange/api-portal/commit/bc854b125c8d630dbfffbf2982dea0228cac7a5f))

* Update warning text ([`edc9ab3`](https://github.com/svange/api-portal/commit/edc9ab3e2d2438834aef295449df0f208dc8a7d3))

* Fix default api logo not rendering

This error mapping (from 403 -&gt; 200, serving index.html) was added so
that routing to a non-existant URL (say, devportal.com/asdfasdf) would
render the client-side, single-page-app&#39;s 404. Unfortunately, this
breaks the logic used to detect if fetching a custom logo worked; since
the status code is always 200, the client-side assumes that the logo
was fetched correctly. ([`8587210`](https://github.com/svange/api-portal/commit/8587210405bc066ea6a1fa517526e96bce6d1b39))

* Update get visibility to include usage plan information ([`0bee337`](https://github.com/svange/api-portal/commit/0bee3376d12edde8683b3503e85521a0bf7aa21c))

* Change server validation status code on misconfigured usage plan ([`b0c6038`](https://github.com/svange/api-portal/commit/b0c6038bff3a25857744dde5d254849ad5cc4d3f))

* Add close icon to modal in admin panel ([`653a89c`](https://github.com/svange/api-portal/commit/653a89c223bf085348fd220a74bb42023cf6646a))

* Update / refactor ApiManagement.jsx

This changes the admin api management UI to group api stages by their
associated usage plan, and allows making visible / hiding all apis on a
usage plan at once. ([`7b7eb92`](https://github.com/svange/api-portal/commit/7b7eb925379b7de445c9c037b3f18c076a59139f))

* Fix api list to vertically scroll ([`fef4bdb`](https://github.com/svange/api-portal/commit/fef4bdbeb25f86fb8e52149a1d73e1711383e32a))

* Update template parameter descriptions ([`549cbbf`](https://github.com/svange/api-portal/commit/549cbbf2ae8ad3306db35c4ebe07df71894dcc32))

* Allow generating SDKs from unsubscribable APIs ([`b3d8b55`](https://github.com/svange/api-portal/commit/b3d8b55286a1ff916e9ad921c0488efa1d888db6))

* Fix handling of APIs in edge case ([`ce33884`](https://github.com/svange/api-portal/commit/ce3388406e65b9564b3909259d60e51a09c733a1))

* Change handling of unsubscribable APIs ([`2a8d852`](https://github.com/svange/api-portal/commit/2a8d852335ba5723b59804f7b647f486a6f2c5f4))

* Fix hashing algorithm for generic APIs, again ([`92fdbaa`](https://github.com/svange/api-portal/commit/92fdbaa9b2c08d2cfdd0f09d3cacd00cb5505051))

* Fix hashing algorithm for generic APIs ([`7a120dc`](https://github.com/svange/api-portal/commit/7a120dc35d8654782f2d16e8042dd8f23d356f1d))

* Fixes for dev mode ([`c0d49ec`](https://github.com/svange/api-portal/commit/c0d49eccda885f9a81cb7afc082e89abe61aa899))

* Merge branch &#39;rebased-admin&#39; of https://github.com/awslabs/aws-api-gateway-developer-portal into rebased-admin ([`36591c0`](https://github.com/svange/api-portal/commit/36591c00f460647c4b80e1e3fb0edb47e8c28f9e))

* Changes ([`a409bd0`](https://github.com/svange/api-portal/commit/a409bd09169d252cf6555ff62865ca3107b3b2b4))

* Enforce that all apiStages on a usage plan must be visible before allowing subscription ([`41f53ee`](https://github.com/svange/api-portal/commit/41f53ee3a7fb739f13a6470ba6985de52c0a507b))

* Fix POST signin 504ing ([`e6570fb`](https://github.com/svange/api-portal/commit/e6570fb8d13a944a51babbfcfd8b6d971fed89c2))

* Fix admin API table sort ([`1295598`](https://github.com/svange/api-portal/commit/129559886d70e387220085f30119b7912874a11c))

* Remove catalogGenerator file detection

CatalogGenerator used to automatically detect if a swagger file had a
valid invokeUri in it, and categorize it as an apiGateway managed api
in that case. Since we expect apis to now always be uploaded by lambdas
or CI tools, never by users, we&#39;re removing this restriction to make
cross-account catalogs easier and prevent odd use cases where admins
upload what they thought were generic apis and instead make visible a
managed api. ([`cecee45`](https://github.com/svange/api-portal/commit/cecee4555ac794f7dcbd89dcffcc8b872aa142d3))

* Prevent staticAssetUploader overwriting sdkGeneration

StaticAssetUploader used to create an sdkGeneration.json file when run,
but didn&#39;t check for the existence of the file first. As such, on every
stack update where a rebuildToken was provided, the sdkGeneration.json
file was overwritten by a file containing only &#34;{}&#34;. This changes the
StaticAssetUploader to first verify if the file exists before
overwriting it. ([`bff291c`](https://github.com/svange/api-portal/commit/bff291cfa0c03b29cad25881f3c6348977f30a75))

* Add client and server validation of generic files ([`df27b3e`](https://github.com/svange/api-portal/commit/df27b3e6b692bf38183ef075cb030145eb749854))

* Tighten CORS policy ([`4812b73`](https://github.com/svange/api-portal/commit/4812b739277083e235cb50d652ddefd93af45fde))

* Update README ([`8e32410`](https://github.com/svange/api-portal/commit/8e324104c3c4b3710d85445e2584c718f1e77eb0))

* Merge branch &#39;staging&#39; into rebased-admin ([`8fa9378`](https://github.com/svange/api-portal/commit/8fa93782ac6a558ca61f082f74a2a05b60969b8c))

* make alerts slightly more useful, but not much ([`891df32`](https://github.com/svange/api-portal/commit/891df32725fafcaeb36b07d0bc6172b13c4d3dd8))

* minor tweaks to make apis list a bit more fluid ([`9939af3`](https://github.com/svange/api-portal/commit/9939af32f52af23eb2c9e473e312fdd5695fd773))

* remove old logic for non-hosted sign in

Also changed what we&#39;re storing (only the idToken) and what we&#39;re considering logged in (an idToken) ([`5a88935`](https://github.com/svange/api-portal/commit/5a8893538fc8a246e49d86ed049f5f55b53fd101))

* make the apigateway sdk accept axios config ([`f180ca1`](https://github.com/svange/api-portal/commit/f180ca11be45f2deb4010933b7d3869757a19aba))

* Fix webpack build for dev-portal

So, swagger-ui has a version of webpack-dev-server that gets hoisted by
npm and is visible to CRA, which then refuses to build because there&#39;s
two versions of webpack-dev-server &#39;available&#39; to it. This skips the
safety check so that the build will at least run... ([`71bc52b`](https://github.com/svange/api-portal/commit/71bc52b4dec9c61f3e4dbeff0935f75ccf7b22d0))

* Fix feedback button always visible ([`1d8d05a`](https://github.com/svange/api-portal/commit/1d8d05a07f004a638e3a3a7b59097d49da63c28b))

* Template fixes for CognitoDomain, UserPoolClient

Make CognitoDomainNameOrPrefix mandatory so the CLI fails early
(instead of waiting for stack deployment to fail), and revert a change
to the CognitoUserPoolClient&#39;s cosmetic name, because it causes issues
when updating the stack due to the CUPCSettings custom resource not
running. ([`dc856ee`](https://github.com/svange/api-portal/commit/dc856eef79eda175bead7541eb9a5b2de53893e6))

* Add integ tests for CFN stack standup/teardown

These tests stand the CFN stack up in a region, verify that the
resulting CloudFront distribution is serving the static site&#39;s
index.html, and then tears the stack down. It does this in both IAD and
PDX, since we&#39;ve had issues with S3 regional URLs before. ([`768255a`](https://github.com/svange/api-portal/commit/768255a3076ccdf951332dfa9f3c4884fba3cfb0))

* Fix deployment for development mode ([`0e415fd`](https://github.com/svange/api-portal/commit/0e415fd7642d1e8e0b307c42ce7f4b27aeb09b68))

* Add development mode as a stack param (#243)

The stack can be very quickly set up / torn down now using developmnet
mode. This doesn&#39;t create a CloudFront distribution, disables OAI,
writes files to the S3 website bucket with a public read ACL, and sets
Cognito&#39;s hosted UI to accept localhost and s3 as valid domains, instead
of CloudFront. ([`41bf141`](https://github.com/svange/api-portal/commit/41bf141ae641c349805d5981f6401de783298686))

* Test fixes and bug fixes for visibility api ([`7d071d7`](https://github.com/svange/api-portal/commit/7d071d7a61c82439a36d6c4ffeb1a6f20bd5db0b))

* Extend visibility API to include subscribability ([`96cb8fc`](https://github.com/svange/api-portal/commit/96cb8fc8c9ee62af3bcefaea900ec8b5a405d834))

* Minor cleanup ([`013d923`](https://github.com/svange/api-portal/commit/013d923b0327caa2a836cb6e33093761a31f8c1f))

* Fix merge conflicts and admin detection logic ([`65091ef`](https://github.com/svange/api-portal/commit/65091ef7c724e119182e829c2569aa01e4d1df03))

* Admin Panel(feat):

Initial commit for admin panel ([`9168e71`](https://github.com/svange/api-portal/commit/9168e71052e1f22d0b2eb35ba8f286caa1116c89))

* Fix us-east-1 S3 bug

So, S3 has both regional and global endpoints. Regional endpoints look
like &#39;bucketName.s3-region.amazonaws.com&#39;, and the global endpoint looks
like &#39;bucketName.s3.amazonawas.com&#39;. Earlier, I found out that the
global DNS takes ~40 minutes to propogate, and that time is not tracked
in CloudFormation, so CFN will declare the stack ready before the
CloudFront distribution points to a working origin.

To mitigate that, I moved the stack to using only the regional endpoints.
Unfortunately, us-east-1 never gets a regional DNS (!!!), so in us-east-1
we need to always use the global endpoint. This change moves to that
behavior; global endpoint in IAD, regional endpoint everywhere else. ([`962d86e`](https://github.com/svange/api-portal/commit/962d86e94c025b6d5d9515e7c340060402c44496))

* Add unit tests for api keys ([`a61bebb`](https://github.com/svange/api-portal/commit/a61bebbfbbf05cbcb8e83b8d0028bf5fcd9d6d31))

* Save userPoolId as well as identityPoolId

Cognito has a core miss where user entries in an identity pool cannot
be linked to their corresponding user entry in a user pool. To work
around this, and to allow admins to correlate user entries, identity
entries, and api keys, we save all three to DDB.

This change also includes a refactor of several functions in
customersController to use a promise-y API, instead of a callback API. ([`db99f39`](https://github.com/svange/api-portal/commit/db99f3962648065e1aec5d4f40892970e0991100))

* Include all relevant files in coverage

Previously, coverage was shallow (the glob pattern was &#39;*/*.{js,jsx}&#39;)
because coverage instrumentation stalled indefinitely. While writing
new tests, it occurred to me that the stalling was likely due to
scanning static-asset-uploader/build/*. The new glob pattern is widened
to &#39;**/*.{js,jsx}&#39;, and excludes a few more files to generate accurate
reports. ([`f6a83b5`](https://github.com/svange/api-portal/commit/f6a83b553d7198f4b64632279b4bb80b320dc281))

* Fix test running on CI

So, node v11.11 broke Jest&#39;s process.env mocks, as documented here:
https://github.com/facebook/jest/issues/8069

While Jest already has a fix out, CRA hasn&#39;t consumed that fix, and has
large, unfriendly warning text about running tests inside CRA using a
higher version of jest than CRA ships with. To get around this, we&#39;re
fixing the node version on Travis to v11.10 temporarily, and will
remove that limitation when CRA has consumed Jest&#39;s fix. ([`8c4ae65`](https://github.com/svange/api-portal/commit/8c4ae65d8e4f436246e7e22608bc09136564fbea))

* Add getSdk tests ([`c05ef69`](https://github.com/svange/api-portal/commit/c05ef6952a18e2a9456a9070063273d140b0ffa6))

* Add getSdk endpoint ([`b035aac`](https://github.com/svange/api-portal/commit/b035aac8bf37d544637f94c93aa669cc2a844398))

* Modify SDK to pass on params ([`375dc67`](https://github.com/svange/api-portal/commit/375dc67bc151c821fc881efcf64fad284dc16798))

* Clean up uses of cognitoID by using helper fn ([`c45bfd4`](https://github.com/svange/api-portal/commit/c45bfd44a1757cc0336aa2d025bdd4f2b4f7376d))

* Suppress console.dir during test runs ([`80231c4`](https://github.com/svange/api-portal/commit/80231c437226cc4600bfb31585e55b432f724fb4))

* Document idempotentSdkGeneration function ([`f036ced`](https://github.com/svange/api-portal/commit/f036ced43165a62feea93dccdc20d42b09166151))

* Clean up tests

Removed an unused import, and moved from deprecated new Buffer() to
Buffer.from() in catalogUpdater test. ([`7c6cf07`](https://github.com/svange/api-portal/commit/7c6cf073cac88ff6813a5cf5a4693aafd3f72630))

* Add unit tests for admin sdk generation

This commit also includes some helpful utilities in setup-jest.js. ([`1c45f76`](https://github.com/svange/api-portal/commit/1c45f76d9db6fa94a2deab52447bdb61d8b082db))

* Add admin API for showing &amp; hiding SDK generation

This adds two new admin API endpoints (/admin/catalog/:id/sdkGeneration).

Additionally, it adds a new file, sdkGeneration.json, in S3 that stores
whether given api-stages or generic apis are enabled for sdk generation.

sdkGeneration.json is read by catalogUpdater to generate the catalog.
The new sdkGeneration endpoints invoke the catalogUpdater lambda function
to cause a fresh catalog to be generated each time an API is enabled or
disabled for catalog generation.

Other changes include updating staticAssetUploader to create an empty
sdkGeneration.json file, fixing tests broken by these changes, and
refactoring catalogUpdater to an async/await style. ([`e81ecdf`](https://github.com/svange/api-portal/commit/e81ecdf5dc00d3c6578cbf9ea7b300424f155bcb))

* Move feedback button further down the page ([`dbba031`](https://github.com/svange/api-portal/commit/dbba0313d608e755ed9dbfdb7de0ad99c008e3b6))

* Fix tests reliant on req.apiGateway.context ([`9a60a46`](https://github.com/svange/api-portal/commit/9a60a46b7f718db083c1be902f572e86e1ee31c1))

* Fix broken build ([`62cefa8`](https://github.com/svange/api-portal/commit/62cefa858849a1006712f077afdd1ee6042f2d28))

* Improve backend lambda logging ([`f8277be`](https://github.com/svange/api-portal/commit/f8277be2d8ec65389417a434e59c092c6a2c85bc))

* Clean up template ([`b21e662`](https://github.com/svange/api-portal/commit/b21e6623ae250db8ba4aa032d5d92d16cb1480a3))

* Move to requiring hosted sign-on ([`196d468`](https://github.com/svange/api-portal/commit/196d468d5e9fbba2003a6da276e8ef872f9cef41))

* Move from OAuth scopes to User Pool Groups ([`5e47762`](https://github.com/svange/api-portal/commit/5e47762adcfee99a32ea126bc04bc3f132f74aca))

* Finalize admin API and add unit tests ([`534f3dc`](https://github.com/svange/api-portal/commit/534f3dc97f3b5aa5ba0891777f3f14f9d3328dec))

* Fix auth by reintroducing /{proxy+} ([`402286e`](https://github.com/svange/api-portal/commit/402286e6738b2d76c03cbef8d0739b7f8e9927d8))

* Set up QA endpoints ([`626e737`](https://github.com/svange/api-portal/commit/626e73717edc1c9308f46302d1c195157fef6eb9))

* First draft of admin API ([`23f0695`](https://github.com/svange/api-portal/commit/23f0695018b0bdb56f2ecaf986557077029b555a))

* Move to promisified notifyCFN

If we return a promise that doesn&#39;t fully capture the work done in
non-promisified notifyCFN, the lambda runtime exits too early. If we
don&#39;t return a promise, the tests don&#39;t pass. This change moves to
promifisied notifyCFN so that the runtime survives until all work is
done and the tests pass. ([`9814944`](https://github.com/svange/api-portal/commit/9814944495c08d8e55f9e9e0b1dae06edcfc3621))

* Fix staticAssetUploader not deleting correctly ([`6b61e7f`](https://github.com/svange/api-portal/commit/6b61e7fab673727e1258607a9d37f4975d22a80a))

* Fix issue with notify-cfn&#39;s failure case ([`bc1e2e2`](https://github.com/svange/api-portal/commit/bc1e2e2e141c00416682a26673b12135c399b57e))

* Fix small typo ([`edc2078`](https://github.com/svange/api-portal/commit/edc207890d79d7ece8614a73e9ba670cf667d850))

* Clean up unnecessary comma ([`797152b`](https://github.com/svange/api-portal/commit/797152b26eee9983ac86d2913d2024c036cd3114))

* Clean up CFN template

This change follows a few linting rules (use numbers for numbers,
remove extraneous dependsOn), changes some double quotes to single
quotes, and removes some unnecessary comments. ([`1f6334a`](https://github.com/svange/api-portal/commit/1f6334a1f0ed00477774fa5eac70cae616a5920e))

* Prevent users from accessing S3 directly using OAI

This change configures an origin access identity (OAI) on the CloudFront
distribution and adds a policy to the S3 bucket allowing only that OAI
to access the bucket contents. This means that users can no longer
directly reach S3; all traffic will go through CF.

This change also changes the default ACL on the files uploaded by the
static-asset-uploader, because those appear to take precedence? ([`180e56f`](https://github.com/svange/api-portal/commit/180e56f12de3b9856ceed68c8cb9e3e7ab82aa6a))

* Fix SwaggerUI to v3.19.3

We have customizations floated on top of swaggerUI3 that get clobbered
when run npm install. Fixing it to the version that&#39;s included should
prevent npm from trying to update it, and let us safely use npm install. ([`aa4123b`](https://github.com/svange/api-portal/commit/aa4123beb86f47e823bb62b8e100341ca649c600))

* Ignore IDEA project descriptions (.iml) ([`55bae2c`](https://github.com/svange/api-portal/commit/55bae2c91e3d9aaff907ca21654cd44c63c357d3))

* fix for #218 and a few other sign-in related bugs ([`c1e8581`](https://github.com/svange/api-portal/commit/c1e858152fa2782019789f4b474dd8085a258267))

* revert swagger-ui upgrade (b/c it broke stuff) ([`dbe2822`](https://github.com/svange/api-portal/commit/dbe282202366255cb13f26d5dc5becde7efb4e9e))

* Remove Fn::If in favor of !If ([`f26bcc1`](https://github.com/svange/api-portal/commit/f26bcc1983c3d27d8fafb6a26a94c3ba5eec776a))

* Refactor to promise-based handlers for customer feedback mechanism ([`ef900be`](https://github.com/svange/api-portal/commit/ef900beb1d8164b1cc668bc540a634ec855d8748))

* Minor refactoring and added unit tests for feedback-controller ([`cc66186`](https://github.com/svange/api-portal/commit/cc661869fc64f55fed88cace7a61beff9b183f24))

* Implement button and modal for customers to submit feedback ([`38e13be`](https://github.com/svange/api-portal/commit/38e13be55a95667b5c478b39d34b2dc3bd592d42))

* Add handlers to retrieve and post customer feedback (save to dynamo, send sns notification) ([`9bd5f8c`](https://github.com/svange/api-portal/commit/9bd5f8c5a3600c0041d5eb63e888f06d8f2a035e))

* Include feedbackEnabled boolean in config.js ([`a5ff596`](https://github.com/svange/api-portal/commit/a5ff596117777547e124e3be29540ebad2fcd966))

* Add Dynamo table to store customer feedback, SNS topic to send notifications, and admin email parameter ([`5ccddb4`](https://github.com/svange/api-portal/commit/5ccddb4d49c0851fd910267cb1c16228fca52a4c))

* Merge pull request #221 from awslabs/minor-updates

Remove duplicate Region -&gt; S3 Website URL mapping ([`64144af`](https://github.com/svange/api-portal/commit/64144af6c4c48fb128b4512393ae68a6820c5365))

* Remove duplicate Region -&gt; S3 Website URL mapping ([`ff45baa`](https://github.com/svange/api-portal/commit/ff45baa72a6e68dea6b942ca06f83095f5d2a70e))

* Update version stamps for v2.3.3 ([`1c5bc0a`](https://github.com/svange/api-portal/commit/1c5bc0af49cb18d8feb385ac212f3da07f09f5db))

* Update static assets for v2.3.3 ([`4e87e93`](https://github.com/svange/api-portal/commit/4e87e9311b3a5a83ba39bdfc5949b2a78cb429df))

* Fix custom domain name deployments

Deployments with custom domain names were failing because the output
WebsiteURL referenced the (non-existant) DefaultCloudfrontDistribution. ([`cf0e1e6`](https://github.com/svange/api-portal/commit/cf0e1e67affaae23b62f86f3ea89fc2ec39e0769))

* Update version stamps for v2.3.2 ([`2bf3ef6`](https://github.com/svange/api-portal/commit/2bf3ef6fc4941fcf83c7b8268097c7c8f2aa0ccd))

* Update static assets for v2.3.2 ([`34339a2`](https://github.com/svange/api-portal/commit/34339a25fec4c53ef958636b59523356387edd0e))

* Fix hosted signout redirect error

Previously, logging off when using hosted signout left the user on a
cognito hosted error page with an error message that the redirectUri was
not defined. This fixes it. According to this doc:
https://docs.aws.amazon.com/cognito/latest/developerguide/logout-endpoint.html#get-logout-request-parameters

The redirectUri in the request to log out must match the one in the
cognito user pool settings. Since the request query-string specified
&lt;devportalURI&gt; and the user pool setting specified
&lt;devportalURI&gt;/logout, the hosted sign-in page couldn&#39;t associate them
correctly. ([`67cef50`](https://github.com/svange/api-portal/commit/67cef50a9bb33d54ec61c3d7146ec5b2ed2f8594))

* Fix template not deploying ([`b2dc8f5`](https://github.com/svange/api-portal/commit/b2dc8f5a61520ada39c7d18f65f405c44f2092b3))

* Release v2.3.1 ([`5862d7a`](https://github.com/svange/api-portal/commit/5862d7a9afc396f978ef9aac1273dfaa3c6de2d9))

* Merge branch &#39;master&#39; into staging ([`f5792ef`](https://github.com/svange/api-portal/commit/f5792ef3fdb4ba45273c0b763767a1e5131a4af2))

* Update version stamps for v2.3.1 ([`316fdbc`](https://github.com/svange/api-portal/commit/316fdbc43cb27cb8ca1e1224247d73e01b4bfed1))

* Update static assets for v2.3.1 ([`54da438`](https://github.com/svange/api-portal/commit/54da438a4345b0945564dd689d8426683c47f3c0))

* Remove cognito hosted UI custom domain field

Otherwise, this will show up to customers deploying via SAR. ([`37a63f2`](https://github.com/svange/api-portal/commit/37a63f2cee882947b643341b946c5e570308fae5))

* add custom resources for cognito hosted-ui ([`3bf2ef1`](https://github.com/svange/api-portal/commit/3bf2ef15070faebd05ebf6452b87be6982f34f47))

* dev portal client changes to support hosted ui ([`f6efdcd`](https://github.com/svange/api-portal/commit/f6efdcd6b4dccb41cfbd4e6471f8ffe93505a0b2))

* Add default CF distribution

SSL by default! CF by default! ([`4749372`](https://github.com/svange/api-portal/commit/4749372d6d101aa63afd21bd127e1cdc75fd2132))

* Increase password requirements

Now needs more characters and requires at least 1 lowercase character
and 1 number. ([`65ba32f`](https://github.com/svange/api-portal/commit/65ba32fd9ebc1aed7fb9faffb3139e131fe45ea7))

* Update README.md ([`06e9c9e`](https://github.com/svange/api-portal/commit/06e9c9ec522061ca346b1bfc5465635ae7f969fc))

* Update README.md ([`b7a1f09`](https://github.com/svange/api-portal/commit/b7a1f09d6941e2b248692a2952b61a21a6506c2c))

* Update README.md ([`c25949c`](https://github.com/svange/api-portal/commit/c25949ca416b9b9cd0ffb629ce4a09855e13a06c))

* Add steps for Update ([`8f27f6f`](https://github.com/svange/api-portal/commit/8f27f6fc4d51bfdf0bb0262d841d7aebddbb3b4e))

* Update README_SAR.md ([`58632fe`](https://github.com/svange/api-portal/commit/58632fe67c4ed146f2bfe67db371a2f1c2d433fa))

* Output CustomDomainName if configured.

Fixes #129 ([`851cc60`](https://github.com/svange/api-portal/commit/851cc60063cd843081da514afd2604bb144a4e4d))

* version bump and build updates ([`8df360b`](https://github.com/svange/api-portal/commit/8df360b0256b19ad14bdd36906e1865fc688de96))

* Standardise references to the staging branch

Italicise references to the staging branch. ([`d607a34`](https://github.com/svange/api-portal/commit/d607a3479f695e059f9b57bca6ae39033e8c687e))

* Update a missed master

Missed a reference to the master branch which should refer to the staging branch ([`9d5e6f7`](https://github.com/svange/api-portal/commit/9d5e6f7fe6a742df62415ae05799bbece964c4cc))

* Add branch specifics to contribution guide

Specify which branch contributors should use to base changes on and for merging into. ([`0211211`](https://github.com/svange/api-portal/commit/02112116205017239cdfddbf319c81ba5536d1a7))

* Clean up unused parts of template ([`6031b70`](https://github.com/svange/api-portal/commit/6031b700c5655fa99cc304089c652270c02bbfa7))

* Fix s3 website URL for all regions

Closes #151. ([`be17865`](https://github.com/svange/api-portal/commit/be17865c2f6d0d077d5816d533e5cf5bc525314a))

* Put parameters into appropriate ParameterGroups
Improves parameter display when deploying stack in the CloudFormation UI ([`e24d83e`](https://github.com/svange/api-portal/commit/e24d83e630698d5b3e890e49a2148cc3873c237c))

* Remove unused parameter ([`f95eee4`](https://github.com/svange/api-portal/commit/f95eee4e35b9e129e7cf823d39902fcc881a29e2))

* Correct the Artifact bucket description
It&#39;s actually used for storing OpenAPI documents, not lambda code ([`017c90c`](https://github.com/svange/api-portal/commit/017c90ca82ef0f5d6fdedf4114cb9cec5629dd42))

* update catalog-updater to convert any method to all other undefined methods (closes #101) ([`3f4b94d`](https://github.com/svange/api-portal/commit/3f4b94d3bdfa0c1594965b0fed4716533c13cfbc))

* fix dashboard no apis edge case

- don&#39;t break if trying to render a graph without apis
- moved the title section out to it&#39;s own component ([`09ea37d`](https://github.com/svange/api-portal/commit/09ea37d97ffbfbc135b083c07b3d82e6ae5e0643))

* version bump and build updates ([`057bc98`](https://github.com/svange/api-portal/commit/057bc988fe7a7876dae56ebc729574bd792ad549))

* Standardise references to the staging branch

Italicise references to the staging branch. ([`5873a38`](https://github.com/svange/api-portal/commit/5873a38ffe3c3cb93b1dd104f15bbbf870843144))

* Update a missed master

Missed a reference to the master branch which should refer to the staging branch ([`4220c73`](https://github.com/svange/api-portal/commit/4220c73f4752b53ad2550abaa4537e93c937c4c8))

* Add branch specifics to contribution guide

Specify which branch contributors should use to base changes on and for merging into. ([`6bc64b6`](https://github.com/svange/api-portal/commit/6bc64b6aae8506e490dca23af233ca06cc662a0a))

* Clean up unused parts of template ([`17a7f0a`](https://github.com/svange/api-portal/commit/17a7f0ab3ff1682901eb20e196685a3b4dc01baf))

* Fix s3 website URL for all regions

Closes #151. ([`d23bb42`](https://github.com/svange/api-portal/commit/d23bb42bd6292efbb1e7f2a62f8448dc19241707))

* Put parameters into appropriate ParameterGroups
Improves parameter display when deploying stack in the CloudFormation UI ([`b485949`](https://github.com/svange/api-portal/commit/b485949897f1307102ce046067ca1e5fa3fa5efc))

* Remove unused parameter ([`3c2176c`](https://github.com/svange/api-portal/commit/3c2176c72051920c6b72b7caf9caf85eac104d83))

* Correct the Artifact bucket description
It&#39;s actually used for storing OpenAPI documents, not lambda code ([`27e2111`](https://github.com/svange/api-portal/commit/27e2111b35674d900c4b6c6c24c13d8b5b097350))

* update catalog-updater to convert any method to all other undefined methods (closes #101) ([`e51b746`](https://github.com/svange/api-portal/commit/e51b7465e1ec9c2c671307be3f234de159596da8))

* fix dashboard no apis edge case

- don&#39;t break if trying to render a graph without apis
- moved the title section out to it&#39;s own component ([`9a86cc7`](https://github.com/svange/api-portal/commit/9a86cc7763062b628f0be421beb6ed00c68f8db1))

* Update version stamps for v2.2.4 ([`b7ec039`](https://github.com/svange/api-portal/commit/b7ec039bc11a83f1fe03e24dbac258cb06c659e4))

* Update built assets for v2.2.4 ([`dd0cc36`](https://github.com/svange/api-portal/commit/dd0cc367c48b0e6f220dc02f2e4db71f01c23a09))

* Update README.md

Co-Authored-By: a-tan &lt;alanzctan@gmail.com&gt; ([`82c8307`](https://github.com/svange/api-portal/commit/82c8307bf73a6ffba225e5d9862004f4bd2a938c))

* Update README.md

Adding generic swagger documentation ([`cf029e7`](https://github.com/svange/api-portal/commit/cf029e7ec58482bdb24d56a2c9f45547bde411aa))

* fixed no apis published error not showing up ([`46c2611`](https://github.com/svange/api-portal/commit/46c2611ee0633a38c4792e5eadd17fbe6f10bc2c))

* fix usagePlanToCatalogObject failing on no apis

- moved away from lodash tap to native js to prevent undefined tap issues and improve clarity (maybe)
- add tests for usagePlanToCatalogObject ([`db40749`](https://github.com/svange/api-portal/commit/db40749191708784cdac8bb4a246513c0be17247))

* tweak to make sure the apis list fires a reaction on updates ([`5a164df`](https://github.com/svange/api-portal/commit/5a164df69b11e5f614d5061a098c9a39c863dcb0))

* fix some build failures in static asset uploader ([`b1374ce`](https://github.com/svange/api-portal/commit/b1374ced4d0b763d898626c933486f8e001db589))

* committing the lock file ([`f3e3e0e`](https://github.com/svange/api-portal/commit/f3e3e0e89761c1cdb11dbd82ffc6a2dfffe89bde))

* modify the catalog updater to fallback to generic if all other options fail ([`20de6fd`](https://github.com/svange/api-portal/commit/20de6fd46b79eaef0f5a3097e845d759853880f2))

* Address PR feedback ([`39f7d12`](https://github.com/svange/api-portal/commit/39f7d120edf2d1262f98d458cba8f5a6d4e923fb))

* Pretty coverage reports

Adds a left edge to the table and left pads the first column of data. ([`581f7c8`](https://github.com/svange/api-portal/commit/581f7c87c089e2265b89fd9fd955ecc75437e888))

* Refactor promiser (test helper) to common location

Also, document it. ([`39880de`](https://github.com/svange/api-portal/commit/39880def999d2f4b3bfd26c1fdfb595b413f4ea6))

* Disable console.log in all lambdas during tests

Previously, console.log was disabled per-test; we shouldn&#39;t need that
output at all during test runs. This disables it globally (and also
provides a file, `setup-jest.js` for building hooks for any other
behavior we want globally!) ([`838a7f5`](https://github.com/svange/api-portal/commit/838a7f5cec35e47e364c20c16dc904908b3e31af))

* Fix CI build ([`cc20b17`](https://github.com/svange/api-portal/commit/cc20b1790eadad6fe4dbc8daff178a3b1c7c4b0a))

* Add build status badge to README ([`d0bbb51`](https://github.com/svange/api-portal/commit/d0bbb519cab9a0504b10269974c834b0f9e75e21))

* Add demo test to dev portal ([`2f3420e`](https://github.com/svange/api-portal/commit/2f3420ebf769d7d07fa4049b5da92a4e425e00c1))

* Add coverage targets to dev portal package.json ([`9d7b27a`](https://github.com/svange/api-portal/commit/9d7b27afa688514d2c4a6e8e32694888f9c065c0))

* Add trivial test for user pool confirm strat ([`963a2d3`](https://github.com/svange/api-portal/commit/963a2d3a6111ce9e203b9867929f27a2762fa2f2))

* Add static asset uploader tests

Explicitly enumerates some edge cases in determineContentType, and uses
some cool testing techniques to test streams and stream filters. ([`9e03ac2`](https://github.com/svange/api-portal/commit/9e03ac25c3bb174da72d4fd05ff51884014cabc4))

* Refactor static asset uploader lambda function

Split uploadStaticAssets into manageable chunks, export functions to
make them exposed for testing, and fix subtle bugs in
determineContentType. ([`461f55a`](https://github.com/svange/api-portal/commit/461f55a8de410cb2ca92bcb1a4d327632185f9ee))

* Add catalog-updater tests and test resources

Various real-ish swagger files are used as inputs to some of the specs. ([`642d814`](https://github.com/svange/api-portal/commit/642d81402877972434a5792f29fc430d60755770))

* Refactor catalog-updater lambda for testing

Split handler into more manageable chunks and export functions to make
them mockable / testable. ([`a9ad502`](https://github.com/svange/api-portal/commit/a9ad5020c3b71b2994752d2f6ebd357f79a39a54))

* Refactor backend lambda function

Splits the route handlers into their own file. We don&#39;t count
express-server.js in the test coverage; express-route-handlers.js is the
file we care about coverage on. Also exposes functions for testing by
exporting them. ([`ea78a00`](https://github.com/svange/api-portal/commit/ea78a00f6445f83266ff85d7ffbc491781745581))

* Add lambda jest config

create-react-app comes with its own (hidden) jest config, but the lambda
functions need one to configure their jest test runs. The only important
customizations so far are the testEnvironment (node), the testMatch
pattern (&#39;**/__tests__/**/*.js&#39;), and the the coveragePathIgnorePatterns
(which intentionally omits express-server.js and
express-server-local.js). ([`e456847`](https://github.com/svange/api-portal/commit/e4568472f0021b9623657ec6b9aa65c63780c219))

* Add dev dependencies and test targets to package.json

Dev dependencies for lambda functions (for now, at least) live at the
top-level. &#34;Sutured&#34; test runs (runs that include dev portal and the
lambda functions) are also kicked off from the top level. ([`ae5fae5`](https://github.com/svange/api-portal/commit/ae5fae5143098e583710295ccff97a90731dc1b2))

* Add custom test-runner script

This script runs all tests in lambdas and the tests in dev-portal. If
run in coverage mode, it produces output consisting of 2 coverage tables
and a final summary. This script bridges a weakness where jest
multi-project mode doesn&#39;t support create-react-app applications. ([`3c37ebe`](https://github.com/svange/api-portal/commit/3c37ebe54e52a0a487460765ed0d11d69a1dc412))

* Update .gitignore

Ignore coverage reports and top level node_modules.

Also re-organizes and documents. ([`48a2e43`](https://github.com/svange/api-portal/commit/48a2e43fe7099f5ad676f8f1087b46a516afb574))

* hide version for apigateway apis (b/c they&#39;re not useful timestamps) ([`a62b79a`](https://github.com/svange/api-portal/commit/a62b79a4bb47a087769c53d2d54bdb1ad88cb2f6))

* only authorize on an api key if we actually have one ([`dfdd33e`](https://github.com/svange/api-portal/commit/dfdd33e921a41f3d823e2d1e5c2cd7fabf555275))

* Update dev portal README

Clarify first time setup steps to get local development running.
Closes #166. ([`3ebf9e1`](https://github.com/svange/api-portal/commit/3ebf9e101d1a9f4bae003b281d877784954db5fd))

* Install all dev portal dependencies and cache results ([`b13bcad`](https://github.com/svange/api-portal/commit/b13bcadb2feb04b3ffdb16c799feb10cf00a6412))

* Add installing dev dependencies to travis build

Also make react-scripts a dev dependency, since it&#39;s needed to run
tests. ([`d62ba47`](https://github.com/svange/api-portal/commit/d62ba47436fffaf4aa4095d648a9bc85c822ab4a))

* remove unnecessary sign-out component ([`fb10940`](https://github.com/svange/api-portal/commit/fb109405a90c8dbda2407f593d1ff874907e1852))

* state refactor and sign out bug fixes

- refactor state to use `reaction` instead of computeds (so that we can deeply set and to remove the storeCache complexity)
- replaced `catalog` state object with `usagePlans` and `apisList`
- fixed bug that caused the devportal to unload non-user data on sign out (apis)
- fixed bug that caused apiImages to not be fetched for generic apis ([`6d42fee`](https://github.com/svange/api-portal/commit/6d42fee232bad4bf2601a3cd885696d4f4d5754c))

* address eddie&#39;s destructuring comment ([`d134222`](https://github.com/svange/api-portal/commit/d134222cca3b00ebccfff9eb16c461b01f158f3b))

* refactor apis menu for clarity and better functionality

- removed internal state and returned to functional components
- extracted sub-menu to a new component
- extracted isActive to external function
- display &#34;No APIs Published&#34; correctly ([`96f8b29`](https://github.com/svange/api-portal/commit/96f8b29064f8a86432a149eaceb1035dfc0edd8f))

* correctly select generic APIs if apiGateway apis don&#39;t exist ([`1a99178`](https://github.com/svange/api-portal/commit/1a99178510c0f91b5650b45a04e55a55d1acce54))

* update api key and dashboard data on sign in ([`da7e67f`](https://github.com/svange/api-portal/commit/da7e67fb52b67ed367bccc4f427d22bf8d82727c))

* clear store on log out ([`dad9221`](https://github.com/svange/api-portal/commit/dad9221e5bc8c15465a4c4664b4c6aa201174c66))

* display error if user doesn&#39;t exist ([`5bdbc3d`](https://github.com/svange/api-portal/commit/5bdbc3d021bf99193a536436e9caff03597bc306))

* Add Travis file ([`0630fd3`](https://github.com/svange/api-portal/commit/0630fd315ffa0bd7eab3084bde28e1378693ef22))

* Update built assets and versions for release ([`b2bf2f7`](https://github.com/svange/api-portal/commit/b2bf2f7224582e784b92892a6ab4f5eacf8c0160))

* Reduce MarketplaceRole name length

To support SAR release, this needs to be shorter; SAR appends a prefix,
and IAM has a short (64 char) limit on role name length. ([`70524d3`](https://github.com/svange/api-portal/commit/70524d39caf2fd73e309435e2e9571d7ed2c218f))

* Merge pull request #155 from awslabs/a-tan-patch-1

Update README.md ([`59d358f`](https://github.com/svange/api-portal/commit/59d358f80b6ac9cd818e90b7dd274a568340f058))

* Update README.md

Added details on adding own approval workflow ([`c05cf4b`](https://github.com/svange/api-portal/commit/c05cf4b034708c4e14f0d9fbf5fa3b71980b3da3))

* Update README.md

Including SAR and diagram ([`f503bc4`](https://github.com/svange/api-portal/commit/f503bc4993e47e6e54a4e7db807891723da80014))

* Add files via upload ([`27a78f2`](https://github.com/svange/api-portal/commit/27a78f27e687b38709900b74e582314a0ea6ce9c))

* Create placeholder ([`59d1ab3`](https://github.com/svange/api-portal/commit/59d1ab30ded547fa7506691f9cde904663249079))

* Update README_SAR.md

Consistent line ending periods ([`36179b1`](https://github.com/svange/api-portal/commit/36179b16be3e18852ddf931b732295d435804c6a))

* Create README_SAR.md ([`af06279`](https://github.com/svange/api-portal/commit/af06279685ace20aff2bd1d69a86b04e98fed6e1))

* update built assets and versions for release ([`081b88a`](https://github.com/svange/api-portal/commit/081b88a6f566537913104412124cec28de07accc))

* fix sidebar to use lightsteelblue coloring ([`c33f3fc`](https://github.com/svange/api-portal/commit/c33f3fcd2c492a241fd853a05b8d46dcc2846a5f))

* navbar now correctly switches from authed to unauthed mode when you sign in/out ([`374e1ea`](https://github.com/svange/api-portal/commit/374e1ea1c7d13af8dad17386cd4f398a3d2cea97))

* update graphs to have remainin limits on them ([`746100e`](https://github.com/svange/api-portal/commit/746100e12067b123bd86657eef5a17045e19f421))

* Update versions in all package.jsons

This should be automated before the next release; it&#39;s too easy to
forget. ([`357e9e0`](https://github.com/svange/api-portal/commit/357e9e075c25d1c3fb78256aeeb5b650deaf5990))

* Update built artifacts for release

Ran `npm run get-dependencies` from top level. Added a dependency on
js-yaml, updated web app assets. ([`5218fc9`](https://github.com/svange/api-portal/commit/5218fc96f4ac75fbebf8dc360de238afe9715600))

* fix(Generic Swagger)

UI fixes as per Alan:
- Header color in API side nav
- Update text
- Align side nav w/ header ([`0cf8436`](https://github.com/svange/api-portal/commit/0cf84360a2ac3dbe547d23c1665202a89b1f41ca))

* fix(Generic Swagger, write-config)

- Move conditional check for generic API to top of if/else block
- write-config was broken due to L32; slight refactor ([`a67a58d`](https://github.com/svange/api-portal/commit/a67a58d722c25ecef7e93c82137f7e6c95ce59a7))

* Invert Route53 nameserver creation logic

Majority of users with a custom domain will already have nameservers /
hosting. This change moves to skip creating Route 53 nameservers &amp;
records by default. Also updates documentation in README. ([`7eb4b08`](https://github.com/svange/api-portal/commit/7eb4b08300f7e445ea75377c7f79cfeecab5ec41))

* Make logging config.js actually work

Co-Authored-By: Trial-In-Error &lt;tylhandrias@gmail.com&gt; ([`71aa965`](https://github.com/svange/api-portal/commit/71aa965dde8cd963347b6119aeec643975d24639))

* Improve logging in static asset uploader

Config.js should be logged for easier debugging. ([`81c26b6`](https://github.com/svange/api-portal/commit/81c26b60be8dae1640ba635cb4e7603b0e4d08f8))

* Fix SAR blocking issue

SAR only recognizes custom resources defined as
&#34;AWS::CloudFormation::CustomResource&#34;, but we were using the newer,
shorter syntax of &#34;Custom::ArbitraryString&#34;. ([`ba1b531`](https://github.com/svange/api-portal/commit/ba1b531471c586eeb5655578cd0813e434341081))

* Add get-dependencies script

This adds the first step towards usable release-tooling. `npm run
get-dependencies` from the top level directory will install dev portal
dependencies, build the dev portal, and install all the lambda
dependencies. ([`f76ec13`](https://github.com/svange/api-portal/commit/f76ec139911cb7db49046d80c41e7f739d0a484b))

* Fix writeConfig script to work without Outputs ([`13deada`](https://github.com/svange/api-portal/commit/13deada35f40ef894a763da75ab1e043d43b3f62))

* Simplify CFN stack outputs

Closes #128. ([`bf575da`](https://github.com/svange/api-portal/commit/bf575da4e256d3d1b7c89b6562076dd9dd93b005))

* Fix redirects on custom domains

Dev portal hosted on a custom domain used to redirect to an XML page
instead of showing the (client-side) 404. This was because the
cloudfront origin was set to s3&#39;s bucket URL, not s3&#39;s website URL (yes,
an S3 bucket has both). This commit fixes that behavior. ([`a3309e9`](https://github.com/svange/api-portal/commit/a3309e97bb68c48aad4b42884da0fbd11cfd493c))

* Merge pull request #135 from awslabs/a-tan-patch-2

Update README.md ([`78fb144`](https://github.com/svange/api-portal/commit/78fb14410a5bff4b8d6377a7ed962264372bf1da))

* Document SkipRoute53... parameter and change its default

Previously, defaulted to creating a Route53 recordset and hosted zone;
now it defaults to skipping the creation of these resources. ([`1b9c826`](https://github.com/svange/api-portal/commit/1b9c826e55cdb21ac43bffd2e97e58829328d2f4))

* Change SkipRoute53NameserverCreation to String type ([`dbe23bb`](https://github.com/svange/api-portal/commit/dbe23bbc2fa2ac57983d5d97411abb161576825a))

* Allow users to skip Route53 during domain name creation

Some customers will have their own nameserver hosting and would rather
not use Route53. This option will support them out of the box. ([`3be7d70`](https://github.com/svange/api-portal/commit/3be7d701fdfc7ae50ef495811802269638f43ee8))

* Update README.md ([`6e3f1b1`](https://github.com/svange/api-portal/commit/6e3f1b1bd0d0c6f2236459b809d7e093949e8fee))

* Modify CatalogUpdater to support OAS3 and parse YAML

Previously, OAS3 files wouldn&#39;t correctly generate the catalog if the
stage and apiId were embedded in them. Now, they will. Additionally,
YAML used to be passed through as a string into the catalog, but the
frontend (swaggerUI) can&#39;t process YAML strings. As such, the catalog
now contains JSON, even if the input is YAML. js-yaml is used to convert
the incoming YAML into JSON swagger or OAS3. ([`7f30b89`](https://github.com/svange/api-portal/commit/7f30b8931bd1d267f3f3a2232f4dd664156e9bb1))

* StaticAssetUploader now creates an empty catalog directory

Previously, users had to create a catalog directory to put files into.
Now, StaticAssetUploader does this for them on custom resource CREATE. ([`f9293c6`](https://github.com/svange/api-portal/commit/f9293c63cd86c9a696e4dff56cae029b0991bdd9))

* Add title to backend API

This will cause it to have a readable name (e.g.,
three-dev-portal-backend-api) instead of being named after the timestamp
(Imported on 2018-10-16T16:5...). ([`30ec2d4`](https://github.com/svange/api-portal/commit/30ec2d4c816ef576542c7137b5cdbc793384864c))

* Add license info to source files

Also adds documentation on bulk licensing to the README. ([`b854a69`](https://github.com/svange/api-portal/commit/b854a69f780c83810e535fc314b7b71c5b5e4940))

* Rename LICENSE and NOTICE

Apache 2.0 LICENSE and NOTICE files may be either no extension or .txt,
with a preference for no extension:
http://apache.org/dev/apply-license.html#license-file-name ([`6a38f2a`](https://github.com/svange/api-portal/commit/6a38f2ab308c903baec1ca805f2b48cc3e7d7a4d))

* new images ([`5c19251`](https://github.com/svange/api-portal/commit/5c19251ac27bfc09166aef1e2aaf43e8e956f9c3))

* Adding standard files ([`01f45b5`](https://github.com/svange/api-portal/commit/01f45b5a8b140e72fbf370b2154488e12d6c08d6))

* Change .gitignore to not ignore customized swaggerui

Also, shrinkwrapped the swagger UI 3 changes in. ([`ce66a5e`](https://github.com/svange/api-portal/commit/ce66a5e2c5076d80e4723e50a694d07312830c0b))

* Fix swaggerUI 3 not detecting onChange for Inputs

SwaggerUI 3 uses a library (react-debounce-input) in exactly one place
(the onChange handler for String type inputs in a ParameterRow; where
you type parameters in Try It Out). This library doesn&#39;t work with React
16. This commit has the &#34;fixed&#34; assets from a locally built version of
SwaggerUI 3 that doesn&#39;t include react-debounce-input.

When/if SwaggerUI 3 merges this in, we can bump the version and not need
to continue floating this change. See this PR:
https://github.com/swagger-api/swagger-ui/pull/4982

WARNING: Building the static assets (say, for a release) WILL overwrite
this bugfix! :/ ([`25d62a1`](https://github.com/svange/api-portal/commit/25d62a1211211f2edbc05fc25b37200e772da691))

* version bump for 2.1.0 ([`8e3df56`](https://github.com/svange/api-portal/commit/8e3df5606e877742040818c9f729f7458a1693ea))

* Include built assets for release ([`bc39128`](https://github.com/svange/api-portal/commit/bc39128d3e892432bfac3eae30a5404c9bc96246))

* Fix &#39;untrusted SSL cert&#39; error on custom domain setup

The cloudfront distribution set up by the CFN stack didn&#39;t properly use
the customers&#39; ACM cert, instead using a wildcard cert (*.cloudfront).
This caused browsers to show an &#39;untrusted SSL cert&#39; error on visiting
the page. ([`21de1fe`](https://github.com/svange/api-portal/commit/21de1fe9893ca39c37d4f64c744e2551ad93488b))

* update Ashton&#39;s readme tweak ([`5085372`](https://github.com/svange/api-portal/commit/5085372efee1b7e6e6631022c7c1cc3da96efa23))

* update text per feedback &amp; forced external links to open in new window ([`c8f74e6`](https://github.com/svange/api-portal/commit/c8f74e6b1cfb89bfc37a7c62426a5ce01291536e))

* update jsdoc for get-fragments fns ([`b93e61f`](https://github.com/svange/api-portal/commit/b93e61fb45cd555323d9017147b9796b87e72f6c))

* minor bug fixes

- fixed spinner of death if there&#39;s no catalog.json
- fixed images not reloading if src changes
- fixed images not loading default if being redirected ([`b2ccd3d`](https://github.com/svange/api-portal/commit/b2ccd3d6b443e619e9d4ed24414b06f6edc273c8))

* readme updates for client-updates ([`a63711c`](https://github.com/svange/api-portal/commit/a63711c635f0d710b91a6fdd1ad1bd7fd259a271))

* updates to server and template for client updates

- added RebuildMode to template
- static asset updater now respects RebuildMode, and only overwrite custom-content if it should ([`eb40350`](https://github.com/svange/api-portal/commit/eb4035060d9f5d5423500c11180f4ff0ba9b2ffe))

* content updates for client-update

- moved content from source to fragment files
- moved images out of source and into overwritable files
- added a styles.css that is loaded dynamically
- removed the squirrel in favor of two different api gateway logos ([`850b8c0`](https://github.com/svange/api-portal/commit/850b8c06306263f64f8cb995226806bd35195ee5))

* modification of styles for client updates (single file) ([`d22d3e2`](https://github.com/svange/api-portal/commit/d22d3e2178818ce70e31aec1b8c53922983961c2))

* added ability to customize image for client updates

- Extract images from the source so it doesn&#39;t get bundled.
- Separate use of logo for home image and nav logo.
- Allow API images to be overridden with the pattern &#39;API_Stage.png&#39; (falls back to default image if the override doesn&#39;t exist).
- begin pattern of all changes in custom-content folder ([`2ab02c0`](https://github.com/svange/api-portal/commit/2ab02c00a0306a17e7c2a6e35c041b5c50470fe2))

* remove some unnecessary files and tweak the template to allow for private site assets

- removed jquery
- removed config.js from lambda function
- added list bucket permissions
- changed redirect from 404 to 403 ([`d453929`](https://github.com/svange/api-portal/commit/d4539299d3d6955c07c05a74bf9830f7d7e8b8f0))

* ignoring vscode settings ([`11a8440`](https://github.com/svange/api-portal/commit/11a8440440b256ee0e978a48157235c7739b12a5))

* Add custom domain name support

The user can now provide a domain name (associated with an ACM cert) as
a parameter override to build out a cloudfront distribution and
associated route53 records. If the parameter override is not provided,
the dev portal is built as previously without a cloudfront distribution
or route53 records. ([`a22d364`](https://github.com/svange/api-portal/commit/a22d364830ef37095ba5eab589208ffd8fd501f7))

* Document case sensitivity of catalog updater ([`6d9e179`](https://github.com/svange/api-portal/commit/6d9e1791c30ff9da467c44db04cc4e32ca394f88))

* Add how to get dev portal URL to README

This was initially postponed because I hoped we could pass a query into
the deploy command. It appears that CFN deploys do not produce output on
query, though... :( ([`a6f7a50`](https://github.com/svange/api-portal/commit/a6f7a500d93d1e0f2e5784e5d639950d4fa743b0))

* Split lambda execution roles apart

Closes #81 ([`ebf2cc1`](https://github.com/svange/api-portal/commit/ebf2cc1b40086cb71d3bb443a22d539396408a0f))

* Update LICENSE.md ([`d310283`](https://github.com/svange/api-portal/commit/d31028305b5efa761af99cb14388e84df5d59a0d))

* Update NOTICE.md ([`e1259bf`](https://github.com/svange/api-portal/commit/e1259bfc1b2a2339feb892524652e5d5f182f906))

* Create NOTICE.md ([`1218b1b`](https://github.com/svange/api-portal/commit/1218b1b1ee6c5d3b9cc2ff0eab57feee6bc68ef6))

* removing placeholder text in appendix

The placeholder was a template section in the appendix. I have replaced it with the correct text for completeness ([`8832a2a`](https://github.com/svange/api-portal/commit/8832a2a156ff7fb7db6079650aeabcad3273716e))

* Bug fix for catalog detection not working ([`8cf1d24`](https://github.com/svange/api-portal/commit/8cf1d24a6b170bee4da3a383a2459b0f0173c077))

* switch to console.error&#39;s for error messages ([`bb0c6e0`](https://github.com/svange/api-portal/commit/bb0c6e06f802d2208e952ab8bd13076da1d03997))

* don&#39;t return bad catalog data if no catalog.json ([`4dbfa78`](https://github.com/svange/api-portal/commit/4dbfa787a69f152f3fdde95c349dd4d6f1d55852))

* Fix odd edge case with static asset uploader

It was re-using (???) the through pipe on re-uploads if the lambda was
still warm, causing the through pipe to fail with a write-after-end
error. Really unsettling; we should understand why this happens. ([`8522a00`](https://github.com/svange/api-portal/commit/8522a00ecec6cddf8807d2b3e07f8b4fd90b9dc3))

* Cleaning up older screenshot ([`5ad9d93`](https://github.com/svange/api-portal/commit/5ad9d93b9cc4ca44895e7e0d40d2572d43d09290))

* Updating screenshots ([`d61b383`](https://github.com/svange/api-portal/commit/d61b383f326599a429bc60f7010011f35aed7139))

* update build assets for v2.0.0 ([`e1f8f63`](https://github.com/svange/api-portal/commit/e1f8f636a9a815c1b50f66f98c9f201885d79c79))

* Move to API_STAGE instead of API:STAGE

Intent is to support windows filesystems. ([`aeb82e3`](https://github.com/svange/api-portal/commit/aeb82e3eb0ae9afe2c017670c6c50273dfa11cba))

* Merge remote-tracking branch &#39;origin/v2&#39; ([`3f4abb3`](https://github.com/svange/api-portal/commit/3f4abb3f49b41818f811cbea0fa29e8764451557))

* Document API:STAGE filename in README ([`29c85ea`](https://github.com/svange/api-portal/commit/29c85eac4652be65143958dc7a1d7dfa7efd1423))

* Fixes for catalog updater

There are several changes in this commit:

First, YAML files should be supported again in the catalog.

Second, usage plan throttle and quota information is exposed to the
front-end in the catalog. Closes #87.

Third, users can name their file API:STAGE.json or API:STAGE.yaml,
and their apiId and stageName will be extracted from the filename. An
example might be the file &#39;catalog/a1e3cf8aqu:production.json&#39;. If the
file is not named in this format, we fall back to trying to extract the
apiId and stageName from the swagger&#39;s host and basePath fields. This
will fail if the api has a custom domain associated with it. ([`b9936ea`](https://github.com/svange/api-portal/commit/b9936ea9fb41f63491d9d1a022c50569976a0b9d))

* refactor sign-up buttons to use a single conditional per Nitish ([`20f038f`](https://github.com/svange/api-portal/commit/20f038fbed838d1112f8eb0bd33d7960c33a6f71))

* tweaks and text changes
- update docs with text from Alan (and tweaked it)
- tweaked graph styling for easier use
- minor clean-up in the api-catalog helpers ([`f3e2fad`](https://github.com/svange/api-portal/commit/f3e2fadfcf109871721f31868e522581107c33ed))

* remove extra ending script tag per Nitish&#39;s comments ([`d649a1e`](https://github.com/svange/api-portal/commit/d649a1e373e7d9e31aef7ea89e6c157006bced3b))

* dashboard and layout changes + minor tweaks
- update swagger ui to auto-load api key
- removed extra aws.js file infavor of combining like data
- removed extra code from self.js ([`b26f71d`](https://github.com/svange/api-portal/commit/b26f71de9cb0596dc0afba497c44530c071d195a))

* Updating getting started and dashboard pages ([`2844935`](https://github.com/svange/api-portal/commit/2844935cc867ffd2e5c2606ab58ace9efa29d180))

* robustified swagger layouts and state management

- moved state side-effects from individual functions to setters
- changes to swagger-ui info layout to scale better ([`81785e8`](https://github.com/svange/api-portal/commit/81785e816bfef977bc33a4201cab9d34e410186b))

* customizing apis page
- customizing swagger ui
- added subscribe button back
- added MobX for easy state passing
- updated state caching utilities to be more robust and to get data before you need it ([`b62e8f5`](https://github.com/svange/api-portal/commit/b62e8f50329d77209afef5a6ec44e8464f8d14fe))

* refactor folder structure and add new navbar

- changed to using .jsx for files that export react components
- added .env file so that we can use absolute-like imports
- moved css from component-specific file to main file (b/c location doesn&#39;t do anything except make it harder to reason about)
- removed Head from usage
- simplified some of the function code ([`a8287a9`](https://github.com/svange/api-portal/commit/a8287a9c1eec6913016bfac90bc566dfaa2f6101))

* remove case studies ([`0d6e46b`](https://github.com/svange/api-portal/commit/0d6e46b61f5aceafea13e5bdd2aa0568b6c439dc))

* Update marketplace integration

The changes to move to SAM broke the marketplace integration. This
commit should fix them by making the marketplace SNS topic available in
the config object. Also includes some housecleaning (removing unecessary
bits of package.json, cleaning up README markdown syntax). ([`406f84d`](https://github.com/svange/api-portal/commit/406f84d16f42940b97cc04cc3b1da736ea9443c1))

* Add whole team to CODEOWNERS for README

Previously, @alantan&#39;s approval was required for any commit that touched
the README. Since we edit the README semi-frequently, we&#39;d rather let
team members&#39; approve PRs. @alantan is still included as a CODEOWNER for
the README so he&#39;ll receive email notifications &amp; can provide input. ([`92539b4`](https://github.com/svange/api-portal/commit/92539b418fbacea24da2da2b413990ff267f7d02))

* Document &amp; format confirmation strategy lambda ([`1c7b2b9`](https://github.com/svange/api-portal/commit/1c7b2b9d8993d9e0c3efc8bb8cb884ce9029a723))

* Rename cognito-user-pools-auto-confirm

Now known as cognito-user-pools-confirmation-strategy. ([`2505a67`](https://github.com/svange/api-portal/commit/2505a6762583ac95ae7cb8411ddef3bae646a052))

* Update README and allow static assets to be re-uploaded

Previously, the custom resource that uploads static assets couldn&#39;t be
triggered after the initial deployment. This change introduces a
StaticAssetRebuildToken param that&#39;s optionally passed into the CFN
stack to trigger re-upload. The script in dev-portal for deploying was
updated to provide a timestamp as the StaticAssetRebuildToken.
Additionally, both README&#39;s received updates to help customers customize
the dev portal. ([`ac71434`](https://github.com/svange/api-portal/commit/ac71434902e3e290760874c7218ba17d389b88a9))

* package reset
- remove common as a package (it was blocking upload)
- trashed npm and reinstalled ([`98ae333`](https://github.com/svange/api-portal/commit/98ae333dd1f7a8a9362d289b6128f498de24a722))

* update dev portal scripts
- `build` now just builds and copies
- `write-config` is now a separate script that will work by itself assume a stack is up
- `deploy` now deploys a previously built portal to the stack and writes out the config
- `release` builds and deploys and writes the config ([`ca96b21`](https://github.com/svange/api-portal/commit/ca96b217e3a17080416aa18c8782f8cb724a749d))

* minor tweaks and fixes including...

build.js:
- remove unnecessary `a` fn
- remove unnecessary `inSequence` fn
- return writeFile so we actually wait for it

misc:
- fix hash routing
- trim some unnecessary comments
- remove unused base.yaml
- update git ignore to ignore packaged.yaml files ([`2b35f6c`](https://github.com/svange/api-portal/commit/2b35f6ca0078aed8c7249ef96627e53e7f8811a3))

* Add Alan to CODEOWNER for README ([`9a287a3`](https://github.com/svange/api-portal/commit/9a287a36ec883b88e0f7a2fa3f414f26a0e2dbe2))

* Add CODEOWNERS file

This tells github who &#34;owns&#34; code; they&#39;ll be automatically included in
CRs for that code. For right now, I&#39;ve set the console team as owners
for everything (&#34;*&#34;).

Docs on CODEOWNERS: https://help.github.com/articles/about-codeowners/ ([`0a633c1`](https://github.com/svange/api-portal/commit/0a633c1d7167f57416e1a75bb741b70a170874cd))

* Update README and static-asset-uploader function settings

While testing SAM deployment for windows, I realized that some change
(presumably library upgrades?) caused the static-asset-uploader to
alternately time out or crash because of memory pressure. This change
increases the lambda function timeout (20-&gt;300 seconds) and memory usage
(128-&gt;512 MB).

Also updated inaccurate instruction in README. ([`3bcdc7f`](https://github.com/svange/api-portal/commit/3bcdc7fc936822add5151c849167540688641ef6))

* Update README with PR feedback ([`eb5959f`](https://github.com/svange/api-portal/commit/eb5959fc30337a90ff183ea789e471bcc43eeeb2))

* Update README and SAM template descriptions

Closes #5 ([`dbb3f0b`](https://github.com/svange/api-portal/commit/dbb3f0be1b9d2f3df32fe769bd4bf8ffe4bdf383))

* Removing unneeded styling component ([`b31ecd4`](https://github.com/svange/api-portal/commit/b31ecd4b305bcede1bca588ca080581d85cb3ff1))

* Merge pull request #77 from a-tan/sam-layout-updates

Sam layout updates ([`beb7411`](https://github.com/svange/api-portal/commit/beb741127579fb70e4a31ed113a01de29c0e227d))

* Update index.js ([`5548f36`](https://github.com/svange/api-portal/commit/5548f36d4452f524bba25232e7af61b74d740bbe))

* updated build assets ([`2171b40`](https://github.com/svange/api-portal/commit/2171b4025b6420f527aaad153bc8d11fc85c0e14))

* addressing review feedback from Trial-in-Error:
- un-committing config.js
- un-committing build.config.js
- updating dev-portal readme to include build.config.js instructions
- updating package.json
- remove console.log and whitespace cleanup ([`99213b6`](https://github.com/svange/api-portal/commit/99213b629a86ec890cff1edce9b09d8856b94a02))

* update copyright date to 2018 ([`68f00a5`](https://github.com/svange/api-portal/commit/68f00a5a84dd22d6b347fed891f6b67f0aeb3807))

* add auto-build script and build artifacts ([`cf49065`](https://github.com/svange/api-portal/commit/cf49065bde3e238041a7194b4204d2647c3d3d3f))

* update all functions to node 8.10 runtime ([`6edcb14`](https://github.com/svange/api-portal/commit/6edcb147fc3b6be6f0aa6f4734e00fcb4b5b674c))

* updating to swagger-ui 3.x ([`c843278`](https://github.com/svange/api-portal/commit/c843278d017ebc3736b0e39d05bc88cd4d975802))

* fixing sign in and sign up; added safeguards against new window links ([`9b298b3`](https://github.com/svange/api-portal/commit/9b298b36417dbb164e793bda3b3cf6e2138d30ad))

* update dependencies (react, react-router, create-react-app, etc.) and some fixes to make the project build ([`49a9e11`](https://github.com/svange/api-portal/commit/49a9e113bbbd5b597f88759281d249986b61255d))

* file cleanup
- ignore devportal node_modules (we&#39;re committing the artifacts)
- rename the LICENSE
- remove the placeholder generated sdks
- remove some extra unnecessary package.jsons
- remove a second .gitignore
- remove redundant customers-controller.js
- commit package-lock.json ([`c196261`](https://github.com/svange/api-portal/commit/c1962612e17d1f79690b2d6c0ce6b624cb9625b5))

* remove unused scripts and dev-portal dependencies ([`5b629c3`](https://github.com/svange/api-portal/commit/5b629c38891b01de7b24c8bc39e23170c5f659f3))

* Misc cleanup and PR feedback

Remove unnecessary things from package.json files, remove commented
parts from CFN template, and remove an unnecessary log statement from
the backend lambda. ([`7275242`](https://github.com/svange/api-portal/commit/7275242ada190c4bb58db0755da5a8dc327788d9))

* Update readme ([`59afff4`](https://github.com/svange/api-portal/commit/59afff47d85aaa59159ea77e7647ae7f120dbcfc))

* Update .gitignore and package.json

No longer .gitignore dependencies (node_modules), and bumped project
version to 2.0.0. Additionally, removed all the previous build tooling
in package.json. ([`0a47b3b`](https://github.com/svange/api-portal/commit/0a47b3b3559830188de09532029cedbe1bc4f263))

* Shrinkwrap all dependencies into project

In the interest of being *SAM* deployable with minimal dependencies,
I&#39;m shrinkwrapping all the node_modules for the dev portal and various
lambdas into the project. ([`458bda3`](https://github.com/svange/api-portal/commit/458bda3457e20d22c047ee6d0d75df661e595161))

* Update built artifacts with bug fixes. ([`a81a59d`](https://github.com/svange/api-portal/commit/a81a59d5f7995fbae40afd309fcb5fbaee9b3e03))

* Fix misc bugs in static asset uploader

Fixes two bugs with the static asset uploader:

1. cleanS3Bucket() would fail when attempting to clean an already empty
bucket. This caused CFN stack deletions to fail the first time, but
succeed on later attempts.

2. The config object (written to config.js by the static asset uploader)
was missing two variables: userPoolId and userPoolClientId, because it
was looking under the event&#39;s ResourceProperties field for
javascript-cased variables, when they&#39;re actually Pascal-cased. ([`af3384d`](https://github.com/svange/api-portal/commit/af3384d5b091abbb48e8e539d9105bca7c1b09f6))

* Make CFN variables accessible to clientside js

Two changes here:

1. services/aws.js now access window.config to find the variables
that it needs. window.config is populated by the static asset uploader
lambda function when it creates the config.js file.

2. The customers-controller now uses a lambda environment variable to
look up the DDB table name instead of assuming that the name will always
be &#39;DevPortalCustomers&#39;. Since it&#39;s a CFN parameter, it will very likely
be a different table name. ([`4c9ebf8`](https://github.com/svange/api-portal/commit/4c9ebf89bebe6c8ad6e1c1fb67487f6094166e0b))

* Move swagger catalog to S3

Previously, the source of truth for the API catalog was a file deployed
with the lambda function. To make it more extensible, it&#39;s now stored in
S3 in the artifacts bucket.

This change has several parts:
- Update the template so the DevPortal lambda function knows the bucket
  name to look for
- Update catalog/index.js to use S3 instead of a local file
- Update CatalogUpdater lambda function to write correct catalog objects
  (previously, they were not in the correct format). ([`8e606fd`](https://github.com/svange/api-portal/commit/8e606fd4dfb440a582240466f778c207187a17d3))

* Fix bug with CatalogUpdater lambda function

The swaggerFileFilter function didn&#39;t check whether a file was in the
correct folder or not; this resulted in it (erroneously) claiming that
catalog.json was a swagger file (and thus updating swagger.json to
contain itself, recursively). ([`027b195`](https://github.com/svange/api-portal/commit/027b19586dfbc3cc95ef544baa62115ee7924240))

* Configure StaticAssetUploader to also delete artifacts

This change gives the StaticAssetUploader permission to delete artifacts
from the artifacts bucket, adds logic to delete these artifacts, and
changes the CFN dependency graph so that the artifacts S3 bucket is
empty before CFN attempts to delete the bucket itself. ([`16eb879`](https://github.com/svange/api-portal/commit/16eb8792d93bdb1bb08acf5e9079dfc7b03a957a))

* Allow for deploying multiple stacks

The marketplace metering role name used to be static; since they must be
unique, you could only deploy the dev portal once without editing
template.yaml. The role name is now dynamic and users should be able
to deploy multiple stacks simultaneously. ([`9e4e7b6`](https://github.com/svange/api-portal/commit/9e4e7b612d173b565bc12e96b7fdf0010a20faf8))

* Add catalog updater lambda

When a user uploads or deletes a file with a key starting with
&#34;catalog/&#34; from the artifacts bucket, this newly created lambda is
triggered. The lambda generates catalog.json and stores it in the
artifacts bucket. This change also introduces a change to the backend
lambda to look the catalog file up from S3 instead of having it deployed
inside the lambda function. ([`1920751`](https://github.com/svange/api-portal/commit/1920751e3bc4eadc1b17dcdb483792ba8daaebb0))

* Remove misleading template input

The stackname (when deployed via SAM) is specified on the command
line. May revert this change when moving to SAR. ([`d572267`](https://github.com/svange/api-portal/commit/d5722679a26a30e2250375fd36d6d78e7c5a2542))

* Fix transform statement

SAR requires Transform to be a string; SAM is more permissive, but we
should be doing what the docs require. ([`7ea3087`](https://github.com/svange/api-portal/commit/7ea3087a4a5420be93750fbacbea3c30559579ff))

* Fix deployment-preventing bug

s3:DeleteObjectAcl isn&#39;t a valid action. Seems to work just fine without
any explicit permissions to delete ACLs. ([`190d23e`](https://github.com/svange/api-portal/commit/190d23ee250e8d3ee3b3adf9e7951f3f9f086ba9))

* Improve the custom resource used to upload assets

There are two big tricks in this CR.

First, the static-asset-uploader lambda receives a bunch of variables as
CFN Properties. These are available to the lambda on the event object
under the &#34;ResourceProperty&#34; property. The lambda uses these properties
to build a file consisting of:
`window.config = ${JSON.stringify(config)}`

That file is then written to S3, and required as a script in the
index.html file served as the static site. This allows the code that
used to need string replace to get the correct values to get them by
looking them up on the window.config object. Thus, these values are
passed like this: the user specifies them in the parameters when
spinning up the CFN stack (or they&#39;re computed during spinning it up) -&gt;
the CFN stack passes them to the custom resource lambda as
event.ResourceProperty -&gt; these fields are collated, made into an
object, and written to s3 as a .js file that makes them available on the
browser window object (as window.config) -&gt; the index.html file includes
the script, giving the client-side code access to these configs. Whewh.

The second trick in this CR is how the custom resource deletes itself.
When the custom resource lambda receives a &#39;DELETE&#39; event, it must
delete the contents of the S3 bucket, or CFN can&#39;t delete the bucket (it
must be empty first). As such, when we receive a &#39;DELETE&#39; event, we list
the files in the bucket and delete them, and do no other processing
(note the elses).

cr https://code.amazon.com/reviews/CR-3164824 ([`7475717`](https://github.com/svange/api-portal/commit/74757174c5b81aed18e459330c34146869e40e9b))

* Fix listener and backend lambdas

Node.js package resolution wasn&#39;t working for the CFN deployed lambdas;
moved the &#34;common&#34; code into both of those lambdas so they would start
up. There&#39;s likely a more elegant solution, but this works for the time
being. ([`a8fce07`](https://github.com/svange/api-portal/commit/a8fce07925e9b38510247ac09074d58ad1714341))

* Add custom resource lambda and CFN entry

To put the static assets into s3, we have to use a custom CFN resource.
This change adds that resource (a lambda function). While it works in
the happy path, it will need extended to be capable of deleting files
from an s3 bucket when the custom resource is deleted. ([`92a314c`](https://github.com/svange/api-portal/commit/92a314ca32a2726c22faf1a550fc58d8aac3df04))

* First draft of new dev portal

Turns out that I need to make a custom resource for uploading the static
assets for the website. Since that&#39;s likely to be hard, I&#39;m snapshotting
the (currently working) cfn template. ([`fc21f37`](https://github.com/svange/api-portal/commit/fc21f3752d0cb4cf2afde908e96aa6cecddc1c20))

* Add sydney region as a region choice to preconfigure script ([`4220e51`](https://github.com/svange/api-portal/commit/4220e519f2ef9a4132324ba2ac68b46e64ccdbad))

* Directly naming Menu Items ([`a3c645d`](https://github.com/svange/api-portal/commit/a3c645d82775719dfb885808d9b83282a802d8db))

* Layout updates for SAM version ([`05c4db5`](https://github.com/svange/api-portal/commit/05c4db587f1fbb60fee3ceb253f00758165bfa91))

* Merge pull request #61 from awslabs/fix-lambdas-common-module

Explicitly package up lambdas/_common module before installing ([`02910f7`](https://github.com/svange/api-portal/commit/02910f7df80440cd7666a136c6acba5282302364))

* Explicitly package up lambdas/_common module before installing ([`9cf7c49`](https://github.com/svange/api-portal/commit/9cf7c49c7512e1eb6001aaa458d1e6bbaf87c03b))

* Merge pull request #56 from trenton/master

Make example region the same as the default ([`ffe68f9`](https://github.com/svange/api-portal/commit/ffe68f9e48684fa2cca1485ae8b013b1a442a309))

* Merge pull request #60 from awslabs/inline-swagger

Inline swagger ([`745289c`](https://github.com/svange/api-portal/commit/745289cb2038de96c7f135d306c418d79efba785))

* Adds `--no-save` to `npm uninstall common-lambda-assets` script

 - This previously worked without this option; may be a change to latest NPM ([`3993614`](https://github.com/svange/api-portal/commit/399361428814bdb3b2c2285d1f0eb372cfa326bb))

* Updates to reduce the amount of find-replace needed

 - Inlines Swagger to use CloudFormation variables
 - Adds environment variables to Lambda function and uses them in Express ([`a4ff9ab`](https://github.com/svange/api-portal/commit/a4ff9ab31a7dfd94b04f1c429a29eadc35bad41c))

* Make example region the same as the default ([`b4d455f`](https://github.com/svange/api-portal/commit/b4d455f02a862cd4731aaf280e9c90f5a8b51241))

* Merge pull request #49 from awslabs/marketplace

fix marketplace flow ([`9be1f2b`](https://github.com/svange/api-portal/commit/9be1f2beb68b895fd815bff3807b559aa41f3039))

* fix marketplace flow ([`f77b47d`](https://github.com/svange/api-portal/commit/f77b47d3d6b603594f9b9d33f3cf69b95406ddab))

* Merge pull request #48 from awslabs/fixes

fix UI bug (react-router update); fix jquery.ba-bbq error; remove cognito custom resource (now native support); PureComponent; fixes #45 #34 ([`2818078`](https://github.com/svange/api-portal/commit/2818078025e274dbb2bdb5fc3d29bd6a014a1918))

* fix UI bug (react-router update); fix jquery.ba-bbq error; remove cognito custom resource (now native support); PureComponent ([`9e317e9`](https://github.com/svange/api-portal/commit/9e317e97d21c94f1a7267612275d492246a6aa01))

* Update minimum CLI version required in &#34;Prerequisites&#34; of README; closes #31 ([`7d0d1e5`](https://github.com/svange/api-portal/commit/7d0d1e56d54e9775ee2d18907ebdf1db9dafcc06))

* Lockin client side dependencies; fixes #34 ([`fbf1367`](https://github.com/svange/api-portal/commit/fbf1367a0f0fb6cb796b002ce6fd4940ff7fea84))

* Merge pull request #26 from Sylistron/patch-4

Adds function to confirm a marketplace subscription ([`20f08db`](https://github.com/svange/api-portal/commit/20f08db4bf0546fe8ff50fa311ad0b78bcacdc67))

* Merge pull request #24 from Sylistron/patch-2

Added ability for the role to access aws-marketplace ([`598c93d`](https://github.com/svange/api-portal/commit/598c93d42724b7cbcd9089c3834f1c947da5bf06))

* Adds function to confirm a marketplace subscription

We need a way to PUT /apig//marketplace-subscriptions/ to tell the dev lambdas to check the user&#39;s marketplace id and match them up to both our cognito id and subscribe them to the plan they purchased. ([`67533d2`](https://github.com/svange/api-portal/commit/67533d24a03705cfc81da9bb0bfb7b342f46d603))

* Added ability for the role to access aws-marketplace ([`2d32336`](https://github.com/svange/api-portal/commit/2d32336c7d31158a51268d5c617acbb3d67e9990))

* Update marketplace setup steps and add TODO for marketplace fix ([`efdddcb`](https://github.com/svange/api-portal/commit/efdddcbe3512ddbf55a8c6fc3776d5e752beefec))

* fix ApiDetails bug caused by react-router update; fixes #19, fixes #20 ([`5bc943c`](https://github.com/svange/api-portal/commit/5bc943c66892527a298ca4b3968915613f8b2d82))

* Added sydney region as a region choice. ([`45c43de`](https://github.com/svange/api-portal/commit/45c43de24756d364e04facd924fa904cdff9076b))

* Merge pull request #15 from awslabs/react-router-dom

upgrade to react-router-dom@4.0.0-beta.4; fixes #14 ([`f607020`](https://github.com/svange/api-portal/commit/f607020563e4cf93d57690b40dce2254fb8b9fb4))

* upgrade to react-router-dom@4.0.0-beta.4; fixes #14 ([`ced8ae0`](https://github.com/svange/api-portal/commit/ced8ae075c7b9c879a817967d05389b9146c6eff))

* adds iam:PassRole to CognitoCustomResourceLambdaExecutionRole to work with Cognito&#39;s new fine-grained permissions; fixes #11 ([`8842d6f`](https://github.com/svange/api-portal/commit/8842d6fbb8e4ba54061e7ba8e15c10618da90453))

* improve listing usage plans and apis in catalog and allow for Swagger in YAML #6 ([`706d545`](https://github.com/svange/api-portal/commit/706d5452693879f627bf28bee100da069e5a23f3))

* update README with more info on cleanup and add delete S3 bucket commands ([`9f14722`](https://github.com/svange/api-portal/commit/9f14722fff677895e1c248d6aabd9dd7ea990626))

* run npm uninstall common-lambda-assets prior to npm install ([`5d5d167`](https://github.com/svange/api-portal/commit/5d5d1673baab72361a96aca84747385e83bf4259))

* fix delete-artifacts-bucket command closes #4 ([`2a07c32`](https://github.com/svange/api-portal/commit/2a07c32edabed572dc05e0fdb8bf7adb54004ef1))

* fix setup for identity pool with space in name ([`ec70539`](https://github.com/svange/api-portal/commit/ec70539b2a738a84b81d90e05cd6bc71ad88af97))

* fix win-lambdas-npm-install closes #3 ([`5a67a8b`](https://github.com/svange/api-portal/commit/5a67a8b109214512a30967a712b184986308d0d4))

* Run npm install as part of package step ([`9a765ac`](https://github.com/svange/api-portal/commit/9a765ac1ca994f38574ada4bbfc5898d4b4b9706))

* Use usage plan productCode field for marketplace subscription ([`e2b31fb`](https://github.com/svange/api-portal/commit/e2b31fb9c33c1eef5307b96aa705ba2b6364981a))

* Update aws-sdk to 2.7.10 ([`f1522ed`](https://github.com/svange/api-portal/commit/f1522ed6b45aeb4889a108482a7ead9a6b4bfde1))

* add production section to readme ([`536d3eb`](https://github.com/svange/api-portal/commit/536d3ebb6da8c415c8bcbd26e2bac04a79a7fcec))

* Merge branch &#39;master&#39; of https://github.com/awslabs/aws-api-gateway-developer-portal ([`7143004`](https://github.com/svange/api-portal/commit/71430048c6d12052af45898d35e580a705875ccb))

* mention win- commands in readme ([`72d941e`](https://github.com/svange/api-portal/commit/72d941e28aef66e97e07118270bb243a72d14bcc))

* fix lambdas-npm-install command ([`b9ecffc`](https://github.com/svange/api-portal/commit/b9ecffc7d65d05887f5547410c897102a1134796))

* deconfig ([`da867ae`](https://github.com/svange/api-portal/commit/da867aefb3f755a75afcba07546a54bd188ef0fa))

* remove meteringservices-preview-sdk and add windows commands ([`f77269f`](https://github.com/svange/api-portal/commit/f77269fb0c75a112ca0dc412163483ba7dcf9f88))

* add blog post to README ([`abab876`](https://github.com/svange/api-portal/commit/abab876ce9266c3b1d9b4c955efbb33e12d4674b))

* add windows support message to README ([`13bbdc7`](https://github.com/svange/api-portal/commit/13bbdc78d082e728cad5115016f789025b20a58a))

* add windows support message to README ([`effe1f2`](https://github.com/svange/api-portal/commit/effe1f29fa1434be097d620863ef8caf2e82a212))

* add close button to usage modal ([`b1aa5da`](https://github.com/svange/api-portal/commit/b1aa5da04ebb6889c6acd6d035a9eaea5b6a02ce))

* update register as seller link ([`ee9ec76`](https://github.com/svange/api-portal/commit/ee9ec76ec816708401ecb68de09a1daecd2cec13))

* Update README ([`d869d3a`](https://github.com/svange/api-portal/commit/d869d3ae17ccbe56c52ef975fbf779c1bbd83eec))

* fix deconfigure ([`04bb5e1`](https://github.com/svange/api-portal/commit/04bb5e1181a8458c898322a0e997d40f7427b90c))

* fix deconfigure ([`868ab31`](https://github.com/svange/api-portal/commit/868ab31ddb603a1e7897a76ea5045b5cd1fbe6f2))

* dev-portal cleanup ([`e247aba`](https://github.com/svange/api-portal/commit/e247aba323390e6791e9eed474e563c8f8203212))

* make deconfigure more strict ([`ce71fbb`](https://github.com/svange/api-portal/commit/ce71fbb4d0925912b8fa629f8d4233a9d5575e15))

* fix for small screens ([`9a1bda7`](https://github.com/svange/api-portal/commit/9a1bda72d9e4d7b75fb8a09ad4f5cc5ce5f0897e))

* fetch account id ([`dbf9248`](https://github.com/svange/api-portal/commit/dbf9248d8650c5bd94a48fdc53e12204c7f30a4a))

* add close buttons to signin and register modals ([`3804e79`](https://github.com/svange/api-portal/commit/3804e7902428e3b46fb962901b27be700f15803c))

* use ```bash ([`4fa5ee7`](https://github.com/svange/api-portal/commit/4fa5ee75e58cd7126bc725be62ae0e6660147935))

* add screenshots to README ([`e1f7b33`](https://github.com/svange/api-portal/commit/e1f7b33859ec65f1f7b36b66f3092b4513536aa6))

* use lambdas/backend/catalog.json; update README; do not show Subscribe button when not signed in; added screenshots ([`747a17b`](https://github.com/svange/api-portal/commit/747a17b46e3c9a3ebafc215011e7890aba2c4c66))

* do not show subscribe button if not signed in ([`eaf402c`](https://github.com/svange/api-portal/commit/eaf402c624f42109ecdbb6f6a16d12bc82f548e5))

* fix pre-config ([`fbfb385`](https://github.com/svange/api-portal/commit/fbfb3859ce14c8d1b4a82584e4a2c4801f3f442a))

* run deconfigure on pre-config; clean up post-configure ([`1b929f0`](https://github.com/svange/api-portal/commit/1b929f022de359d80c20b9b1fe9d0937a50f9727))

* read outputs from cloudformation for post-config ([`8b35c8a`](https://github.com/svange/api-portal/commit/8b35c8a36d83cc16dbe92ee3a005e419f3346eed))

* add scripts dir ([`2fde6d4`](https://github.com/svange/api-portal/commit/2fde6d4831a4f0531ffa6fdb441a17c83dfa9862))

* add regex to cloudformation config ([`95b0387`](https://github.com/svange/api-portal/commit/95b0387117b805077e79cec2dff56c798439c666))

* add regex validation to pre-config buckets; update README cli update instructions ([`2e93e04`](https://github.com/svange/api-portal/commit/2e93e0404a33f862814f2ab1914683b5a915a2e5))

* add --region to deploy and package commands ([`5141328`](https://github.com/svange/api-portal/commit/5141328459be257a507eb8e83ad83506de73d834))

* changes for region config ([`37af1aa`](https://github.com/svange/api-portal/commit/37af1aa7121c33b0536a80cd324a92cf7b282acf))

* use !Ref CustomersTable ([`cd54f1d`](https://github.com/svange/api-portal/commit/cd54f1dbd0b5cc77d83fd8251a4f4904e3008fc3))

* update setup ([`d866ef1`](https://github.com/svange/api-portal/commit/d866ef19bda85d09d7d7549d0b3912c2aadcb6ed))

* rename lambdas/express to lambdas/backend; move sdks to public ([`7233563`](https://github.com/svange/api-portal/commit/72335632d33681452d339a689d0f6180bffda87e))

* update example swagger; add usage graph; change logo; fix register/signin refresh bug ([`7870682`](https://github.com/svange/api-portal/commit/7870682fd8df7ae75fd9fa10b7ce5d253f0d0a62))

* fix autoconfirm invoke permission resource ([`1be49e3`](https://github.com/svange/api-portal/commit/1be49e3e0b2e2fff6037ef3f68372361f1f6e028))

* add ApiGatewayMarketplaceMeteringRole and LambdaCognitoIdentityPoolExecutionPermission ([`1ffc7c6`](https://github.com/svange/api-portal/commit/1ffc7c6a9e43a99eb9014e86a114339c4f25e7bd))

* setup updates ([`b14367d`](https://github.com/svange/api-portal/commit/b14367d275b35cb488fc50f323dac57a349b5f45))

* update configure ([`85269c9`](https://github.com/svange/api-portal/commit/85269c915cdb795321d8e09ef69144c63f10050d))

* ui additions ([`ec5cd30`](https://github.com/svange/api-portal/commit/ec5cd30b962f4061ac0a453ee2b4fb5d54133681))

* ApiCatalog ([`fbdcc82`](https://github.com/svange/api-portal/commit/fbdcc822cc22f7df7342b22031baad6480f4f908))

* add upload-site command inside dev-portal ([`5820683`](https://github.com/svange/api-portal/commit/5820683258abd8cd9532d28f17dd9c5db39ead99))

* add dev-portal/package.json to configure/deconfigure ([`624a42c`](https://github.com/svange/api-portal/commit/624a42c821025e31ebb72b6d5bed1f1929866414))

* fix public relative path; fix post-setup ([`cc1ad11`](https://github.com/svange/api-portal/commit/cc1ad11a603deb416093ef7311fd23d434b66de5))

* output https s3 url for site ([`4345993`](https://github.com/svange/api-portal/commit/4345993310ffab7e33c83bb373d3989f36637034))

* ui improvements; fix user pool email not required; fix local module install for lambdas ([`0d89e49`](https://github.com/svange/api-portal/commit/0d89e4940f7b74149c803b5229bc6030cfe60c76))

* fix configure scripts ([`b993fba`](https://github.com/svange/api-portal/commit/b993fba209b18a77275ff80c63ebd07a83a20c38))

* resolve merge conflicts ([`e4b4887`](https://github.com/svange/api-portal/commit/e4b4887f35fce2f3e99540c07f36a71abf248053))

* CloudFormation working; ui WIP ([`f208713`](https://github.com/svange/api-portal/commit/f20871390ec24f3e59c4221a502617941b8cc061))

* Initial commit ([`e95fa5b`](https://github.com/svange/api-portal/commit/e95fa5ba9df04c3f439ca2fc0337bdd166cf0bdb))
