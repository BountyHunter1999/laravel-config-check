setup_project:
	docker run --rm  -v $$(pwd):/var/www/html -w /var/www/html composer:lts composer create-project laravel/laravel config-checker
	sudo chown -R $$(id -un):$$(id -gn) config-checker
	mv -v config-checker/* config-checker/.[!.]* .
	rm -rf config-checker
