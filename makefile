## help	:	Print commands help.
help : Makefile
	@sed -n 's/^##//p' $<

## robot	:	running robot script.
robot:
	@echo "runing robotFramwork ..."
	@python3 -m robot $(filter-out $@,$(MAKECMDGOALS))
	
## activate:	activate your env.
activate:
	@echo "activate virtualenv"
	@source ../venv_robot/bin/activate

	# https://stackoverflow.com/a/6273809/1826109
%:
	@:
