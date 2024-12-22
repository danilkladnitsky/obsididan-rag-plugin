OBSIDIAN_VAULT_PATH=obsidian-vaults/sample-vault
PLUGIN_PATH=$(OBSIDIAN_VAULT_PATH)/.obsidian/plugins/plugin

setup-node:
	cd frontend && npm run setup-node

install:
	cd fronted && npm install --force

build-plugin:
	cd frontend && npm run build

reset-plugin:
	rm -rf $(PLUGIN_PATH)
	mkdir -p $(PLUGIN_PATH)

move-plugin:
	cp -r frontend/dist/* $(PLUGIN_PATH)
	cp frontend/manifest.json $(PLUGIN_PATH)

update-plugin: setup-node install build-plugin reset-plugin move-plugin