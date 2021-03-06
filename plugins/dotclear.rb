##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "dotclear" do
author "Brendan Coles <bcoles@gmail.com>" # 2012-02-29 #
version "0.1"
description "dotclear - blog - Homepage: http://dotclear.org/"

# Google results as at 2012-02-28 #
# 561 for "powered by dotclear"

# Dorks #
dorks [
'"powered by dotclear"'
]

# Examples #
examples %w|
dotclear.org
fr.dotclear.org
www.feeblemind.org
www.markvernon.com/friendshiponline/dotclear/
www.pixielive.org
www.glazman.org/weblog/dotclear/index.php
www.libellules.ch/dotclear/
www.extens-hair.com/blog/index.php
www.grounation.org
www.sophiemhabille.com/index.php
hajji-ayadi.com/dotclear2/
www.ateliermetaldart.com/blog/
|

# Matches #
matches [

# Powered by link
{ :text=>'<p>Powered by <a href="http://dotclear.org/">Dotclear</a></p>' },

# HTML Comments
{ :text=>'<!-- End #d-content -->' },
{ :text=>'<!-- End #blogextra -->' },

# Search link
{ :text=>'<a href="#search">To search</a>' },

# p class="post-info-co"
{ :text=>'<p class="post-info-co">' },

]

end

