#!/usr/bin/env python

__author__ = "Jeffrey Jose"

import sys, os
import simplejson as json

import tornado.ioloop
import tornado.web
import tornado.options
import tornado.websocket

# App Libraries
from server import utils

tornado.options.define("port", default=8000, help="Run on the given port", type=int)

vueAppPath = os.path.abspath(os.path.dirname(__file__))

class Default(tornado.web.RequestHandler):
    '''
    If Tornado doesnt know what to do, let vue take care of the url.
    '''

    def get(self, path):
        '''
        HTTP GET Method handler
        '''
        self.redirect('/#%s' %  path, permanent = True)


class IndexHandler(tornado.web.RequestHandler):
    '''
    Handler to serve the template/index.html
    '''
    def get(self):
        '''
        HTTP GET Method handler
        '''
        with open(vueAppPath + "/index.html", 'r') as file:
            self.write(file.read())

class StaticHandler(tornado.web.RequestHandler):
    '''
    Handler to serve everything inside static/ directory
    '''

    def get(self):
        '''
        HTTP GET Method handler
        '''
        self.set_header('Content-Type', '')
        with open(vueAppPath + self.request.uri, 'r') as file:
            self.write(file.read())

handlers = [
    (r'/',                 IndexHandler),
    (r'/static/.*',        StaticHandler),
    (r'/(.*)',             Default),          # When you visit a non-existant link
]


if __name__ == "__main__":

    tornado.options.parse_command_line()

    # Turn debug on to have Tornado restart when you change this file
    # Recommended when you're developing. Dont forget to remove it
    # when you put this in production
    #
    #app = tornado.web.Application(handlers, debug = True)
    #

    app = tornado.web.Application(handlers)
    app.listen(tornado.options.options.port)

    print 'Tornado has started at %s' % tornado.options.options.port
    tornado.ioloop.IOLoop.instance().start()
