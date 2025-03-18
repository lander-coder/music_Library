<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />

  <xsl:template match="/music">
    <html>
      <head>
        <title>Music Library</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
          }

          .song {
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 15px;
            border-radius: 5px;
          }

          .song-title {
            color: #2c3e50;
            font-size: 1.5em;
            margin-bottom: 10px;
          }

          .artist {
            color: #7f8c8d;
            font-size: 1.2em;
          }

          .year {
            color: #95a5a6;
          }

          .albums {
            margin-top: 10px;
          }

          .album {
            background: #f0f0f0;
            padding: 5px 10px;
            margin: 2px;
            display: inline-block;
            border-radius: 3px;
          }
        </style>
      </head>

      <body>
        <h1>Music Library</h1>
        <xsl:for-each select="song">
          <div class="song">
            <div class="song-title">
              <xsl:value-of select="songTitle" />
            </div>
            <div class="artist">
              Artist:
              <xsl:value-of select="artist" />
            </div>
            <div class="year">
              Year:
              <xsl:value-of select="debutYear" />
            </div>
            <div class="albums">
              Albums:
              <xsl:for-each select="albums/album">
                <span class="album">
                  <xsl:value-of select="." />
                </span>
              </xsl:for-each>
            </div>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
