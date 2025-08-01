#!/bin/bash

mkdir -p .git/hooks
cat > .git/hooks/post-merge <<'EOF'
#!/bin/bash
# After merge or pull, update submodules to latest remote
git submodule update --init --remote --recursive
EOF

chmod +x .git/hooks/post-merge
cp .git/hooks/post-merge .git/hooks/post-checkout