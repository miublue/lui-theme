"""
    pygments.styles.lui
    ~~~~~~~~~~~~~~~~~~~~~~~~

    Lui.

    :copyright: Copyright 2024, Miu.
    :license: BSD, see LICENSE for details.
"""

from pygments.style import Style
from pygments.token import Keyword, Name, Comment, String, Error, \
     Number, Operator, Generic, Whitespace


class LuiStyle(Style):
    """
    Lui gemaakt thema van Miu
    """

    background_color = 'ansiblack'

    styles = {
        Whitespace:                'ansiwhite',
        Comment:                   'italic ansigray',
        Comment.Preproc:           'ansiblue',
        Comment.Special:           'ansiblue',


        Keyword:                   'ansiblue',
        Keyword.Pseudo:            'ansiblue',
        Keyword.Type:              'ansiblue',

        Operator:                  'ansiblue',
        Operator.Word:             'ansiblue',

        Name:                      'ansiwhite',
        Name.Function:             'ansiwhite',
        Name.Class:                'ansiwhite',
        Name.Namespace:            'ansiwhite',
        Name.Builtin:              'ansiblue',
        Name.Exception:            'ansiblue',
        Name.Variable:             'ansiwhite',
        Name.Constant:             'ansired',
        Name.Label:                'ansiblue',
        Name.Entity:               'ansiblue',
        Name.Attribute:            'ansiblue',
        Name.Tag:                  'ansiblue',
        Name.Decorator:            'ansiblue',
        Name.Other:                'ansiwhite',

        String:                    'ansired',
        String.Doc:                'ansired',
        String.Interpol:           'ansired',
        String.Escape:             'ansiblue',
        String.Regex:              'ansiblue',
        String.Symbol:             'ansiblue',
        String.Other:              'ansiblue',
        Number:                    'ansired',

        Generic.Heading:           'bold ansiblue',
        Generic.Subheading:        'bold ansiblue',
        Generic.Deleted:           'ansired',
        Generic.Inserted:          'ansicyan',
        Generic.Error:             'bg:ansired ansiblack',
        Generic.Emph:              'italic',
        Generic.Strong:            'bold',
        Generic.Prompt:            'bold',
        Generic.Output:            'ansiblue',
        Generic.Traceback:         'ansired',

        Error:                     'bg:ansired ansiblack',
    }
