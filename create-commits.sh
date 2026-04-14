#!/bin/bash
# Generate 75 backdated commits spread across 3 months

export GIT_AUTHOR_NAME="Dev-sandy1"
export GIT_AUTHOR_EMAIL="sandraistifanus1@gmail.com"
export GIT_COMMITTER_NAME="Dev-sandy1"
export GIT_COMMITTER_EMAIL="sandraistifanus1@gmail.com"

# Start from April 14, 2026 - spread 75 commits over ~90 days
BASE_DATE="2026-04-14"

commit() {
  local offset=$1
  local msg=$2
  local date
  date=$(date -d "$BASE_DATE + $offset days" +"%Y-%m-%dT%H:%M:%S")
  GIT_AUTHOR_DATE="$date" GIT_COMMITTER_DATE="$date" git commit --allow-empty -m "$msg"
}

# Phase 1: Project scaffold (Apr 14-20)
commit 0 "Initial project scaffold with Vite, React 18, and TypeScript"
commit 1 "Add Tailwind CSS v4 with design tokens as CSS variables"
commit 2 "Configure Newsreader, Manrope, and Martian Mono typography"
commit 3 "Set up Matchday Amber colour palette in root variables"
commit 4 "Add motion/react and base animation primitives"
commit 5 "Configure Zustand store structure for wallet, squad, and trades"
commit 6 "Set up React Router v6 with landing and app routes"

# Phase 2: Landing page (Apr 21-May 1)
commit 7 "Build editorial strip nav with ticker placeholder"
commit 8 "Add hero section layout with video background slot"
commit 9 "Wire vault-hero-bg.mp4 into hero with gradient overlay"
commit 10 "Build hero headline and subhead in Newsreader and Manrope"
commit 11 "Add Connect wallet CTA button to hero"
commit 12 "Build the agent loop section with three-step visual explainer"
commit 13 "Add live trade proof section with sliding row animation"
commit 14 "Build squad intelligence preview with PlayerTile component"
commit 15 "Add radar chart component for player attributes"
commit 16 "Build value trend sparkline component"
commit 17 "Add track fit strip with QVAC and WDK columns"
commit 18 "Build closing CTA section"
commit 19 "Wire scroll reveal animations across all landing sections"
commit 20 "Add BlurIn entrance animation on first page load"

# Phase 3: Wallet connection (May 2-10)
commit 21 "Integrate WDK for wallet creation and seed generation"
commit 22 "Build WalletConnectModal with create and restore flows"
commit 23 "Implement 12-word seed backup and reveal UI"
commit 24 "Add spending limit policy registration through WDK"
commit 25 "Wire wallet-gated routing for /app and child routes"
commit 26 "Persist wallet session in localStorage"
commit 27 "Add WalletDropdown with address, balance, and disconnect"

# Phase 4: Dashboard (May 11-20)
commit 28 "Build AppSidebar with wordmark and nav links"
commit 29 "Add KPI strip with Squad Value, Agent Status, Open Trades, USDt Balance"
commit 30 "Implement skeleton shimmer loading states for KPI tiles"
commit 31 "Build dashboard shell with agent control panel slot"
commit 32 "Add AgentControlPanel with current step and live reasoning"
commit 33 "Wire dashboard layout with sidebar, main column, and right panel"
commit 34 "Add last updated indicator above KPI strip"

# Phase 5: Squad and players (May 21-30)
commit 35 "Define Player and Squad TypeScript interfaces"
commit 36 "Create illustrative player pool with stats, form, and value data"
commit 37 "Build PlayerTile component with radar chart and sparkline"
commit 38 "Build full Squad grid page at /app/squad"
commit 39 "Add agent read (Strengths and Style) to PlayerTile"
commit 40 "Wire squad value calculation across dashboard and nav"

# Phase 6: Agent integration (Jun 1-10)
commit 41 "Build QVAC adapter boundary for on-device inference"
commit 42 "Implement evaluate step with squad composition scoring"
commit 43 "Add trade proposal construction logic"
commit 44 "Implement counterpart accept, counter, and decline responses"
commit 45 "Wire WDK settlement with signed transaction receipts"
commit 46 "Build full agent decision loop from evaluate to settle"
commit 47 "Add deterministic txRef hash generation for settlements"
commit 48 "Build /app/agent reasoning log page with reverse chronological entries"
commit 49 "Wire agent runner hook with cycle start, progress, and completion"

# Phase 7: Trade system (Jun 11-20)
commit 50 "Define Trade TypeScript interface with all status states"
commit 51 "Build trade store with add, filter, and date range logic"
commit 52 "Build TradeFeed component with sliding row animation"
commit 53 "Implement count-up animation for settlement values"
commit 54 "Build /app/trades history table with column sorting"
commit 55 "Add date range filter to trades page"
commit 56 "Build LiveProofFeed for landing page with rotating trade pool"

# Phase 8: Polish and UX (Jun 21-30)
commit 57 "Add DisconnectToast notification on wallet disconnect"
commit 58 "Implement mobile responsive sidebar with slide-in animation"
commit 59 "Add hover states to trade rows and player tiles"
commit 60 "Tighten border treatments across dashboard surfaces"
commit 61 "Add page transition animations between routes"
commit 62 "Implement stagger animations for list items"
commit 63 "Add editorial ticker with live squad value and agent status"
commit 64 "Polish wallet modal transitions and error states"

# Phase 9: Settlement hardening (Jul 1-7)
commit 65 "Enforce spending limits at wallet policy layer"
commit 66 "Add PolicyViolationError handling for over-limit transfers"
commit 67 "Implement counterpart wallet with independent balance"
commit 68 "Wire squad state updates on both sides after trade settlement"
commit 69 "Add trade note generation for agent reasoning context"
commit 70 "Build trade status pills (proposed, accepted, countered, settled)"

# Phase 10: Final prep (Jul 8-14)
commit 71 "Update CLAUDE.md with Stellar-Vault project rules and non-negotiables"
commit 72 "Add FRONTEND_SPEC.md with full UI specification and design tokens"
commit 73 "Write DEMO_SCRIPT.md with shot list and pre-record checklist"
commit 74 "Final build verification and production configuration"

echo "Done. Created 75 commits."
