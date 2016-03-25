from ryu.base import app_manager

#based on http://ryu-zhdoc.readthedocs.org/en/latest/writing_ryu_app.html

class L2Switch(app_manager.RyuApp):
    def __init__(self, *args, **kwargs):
        super(L2Switch, self).__init__(*args, **kwargs)

