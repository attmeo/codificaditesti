<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:t="http://www.tei-c.org/ns/1.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema">


<xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title><xsl:value-of select="t:TEI/t:teiHeader/t:fileDesc/t:titleStmt/t:title"/></title>
                <link href="style.css" rel="stylesheet" type="text/css"/>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
                <script src="script.js"></script> 
            </head>

        <body>

            <header>
            <div class="navbar">
                <div class="left-links">
                    <a href="#">Home</a>
                    <a href="#page147">Pagina 147</a>
                    <a href="#page148">Pagina 148</a>
                    <a href="#page149">Pagina 149</a>
                    <a href="#about">About</a>
                </div>
            </div>
            </header>

            <div class="container" name="intro">
                <div class="info-box">
                    <p>
                        <h1>
                            <strong>
                                <xsl:value-of select="//t:titleStmt/t:title"/>
                            </strong>
                        </h1>
                    </p>
                    <p>
                        <strong>Edizione: </strong>
                        <xsl:value-of select="//t:editionStmt/t:edition/text()"/>
                    </p>
                    <p>
                        <strong>Data Edizione: </strong>
                        <xsl:value-of select="//t:editionStmt//t:date"/>
                    </p>
                    <p>
                        <strong>Conversione a cura di: </strong>
                        <xsl:value-of select="//t:respStmt[t:persName[@xml:id='MT']]/t:persName"/>
                    </p>
                    <p>
                        <strong>Progetto coordinato da: </strong>
                        <xsl:value-of select="//t:editionStmt//t:respStmt[t:persName[@xml:id='AMDG']]//t:persName"/>,
                        <xsl:value-of select="//t:publicationStmt//t:publisher"/>
                    </p>
                </div>
            </div>

            <div class="about" id="introArtom">
                <div class="image-container">
                    <img src="e_artom.jpeg" alt="Emanuele Artom"/>
                    <p><strong>Ritratto di Emanuele Artom, 1935 ca.</strong></p>
                </div>
                <div class="caption">
                    <p>Nato in una famiglia colta della borghesia ebraica torinese, fu un partigiano durante la Resistenza italiana.
                    Laureatosi nel 1937, si avvicinò all'antifascismo e nel 1943 si unì al Partito d'Azione.
                    Durante un rastrellamento tedesco nel marzo 1944, fu catturato, torturato e subì indicibili sevizie a causa della sua identità e del ruolo di commissario politico.
                    Fotografato come trofeo di guerra, morì il 7 aprile 1944 nelle Carceri Nuove di Torino. 
                    Nonostante gli sforzi post-guerra, il suo corpo non è mai stato ritrovato. 
                    Torino gli ha dedicato una via nel Parco Sangone in suo onore.</p>
                </div>
            </div>
            <div class="container">
                <div class="info-box">
                    <h2>Informazioni sulla fonte</h2>
                    <p>
                        <strong>Titolo: </strong>
                        <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:title"/>
                    </p>
                    <p>
                        <strong>Autore: </strong>
                        <a href="{//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:author/@ref}">
                            <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:author"/>
                        </a>
                    </p>
                    <p>
                        <strong>Data: </strong>
                        <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msContents//t:msItem//t:docImprint//t:date"/>
                    </p>
                    <p>
                        <strong>Lingua: </strong>
                        <xsl:value-of select="//t:textLang"/>
                    </p>

                    <p>
                        <strong>Condizioni: </strong>
                        <xsl:value-of select="//t:supportDesc//t:condition"/>
                    </p>

                     <p>
                        <strong>Caratteristiche: </strong>
                        <xsl:value-of select="//t:typeDesc"/>
                    </p>

                    <p>
                        <strong>Estensione: </strong>
                        <xsl:value-of select="//t:supportDesc//t:extent"/>
                    </p>
                    
                    <p>
                        <strong>Struttura delle pagine: </strong>
                        <xsl:value-of select="//t:layoutDesc//t:layout"/>
                    </p>

                    <p>
                        <strong>Conservato da: </strong> 
                        <a href="{//t:sourceDesc//t:msDesc//t:msIdentifier//t:institution/@ref}">
                            <xsl:value-of select="//t:sourceDesc//t:msDesc//t:msIdentifier//t:institution"/>
                        </a>
                    </p>
                    
                </div>
            </div>

           

        <!--PAGINA 147-->

        <h2 class="pageNum">Pagina 147</h2>
        <div class="page-container" id="page147">
            <div class="pages">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p147']/@url"/>
                    </xsl:attribute>
                </xsl:element>
            </div>
    
            <div class="page-container2">
                <!-- Bottone per evidenziare le correzioni -->
                <button onclick="highCorr('txt147')" style="color: lightgreen;">Evidenzia Correzioni</button>
                <!-- Bottone per evidenziare le aggiunte -->
                <button onclick="highAdd('txt147')" style="color: lightcoral;">Evidenzia Aggiunte</button>
                <!-- Bottone per mostrare le cancellature -->
                <button onclick="highCanc('txt147')" style="color: #af4bfc">Mostra Cancellature</button>
                <!-- Includi il tag apply-templates per visualizzare il testo -->
                <div class="encoded-text" id="txt147">
                    <xsl:apply-templates select="//t:ab[@xml:id='p-147']"/>
                </div>
            </div>
        </div>

        <!-- PAGINA 148 -->

        <h2 class="pageNum">Pagina 148</h2>
        <div class="page-container" id="page148">
            <div class="pages">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p148']/@url"/>
                    </xsl:attribute>
                </xsl:element>
            </div>
    
            <div class="page-container2">
                <!-- Bottone per evidenziare le correzioni -->
                <button onclick="highCorr('txt148')" style="color: lightgreen;">Evidenzia Correzioni</button>
                <!-- Bottone per evidenziare le aggiunte -->
                <button onclick="highAdd('txt148')" style="color: lightcoral;">Evidenzia Aggiunte</button>
                <!-- Bottone per mostrare le cancellature -->
                <button onclick="highCanc('txt148')" style="color:#af4bfc;">Mostra Cancellature</button>
                <!-- Includi il tag apply-templates per visualizzare il testo -->
                <div class="encoded-text" id="txt148">
                    <xsl:apply-templates select="//t:ab[@xml:id='p-148']"/>
                </div>
            </div>
        </div>
        <!-- PAGINA 149-->

        <h2 class="pageNum">Pagina 149</h2>
        <div class="page-container" id="page149">
            <div class="pages">
                <xsl:element name="img">
                    <xsl:attribute name="src">
                        <xsl:value-of select="//t:graphic[@xml:id='p149']/@url"/>
                    </xsl:attribute>
                </xsl:element>
            </div>
    
            <div class="page-container2">
                <!-- Bottone per evidenziare le correzioni -->
                <button onclick="highCorr('txt149')" style="color: lightgreen;">Evidenzia Correzioni</button>
                <!-- Bottone per evidenziare le aggiunte -->
                <button onclick="highAdd('txt149')" style="color: lightcoral;">Evidenzia Aggiunte</button>
                <!-- Bottone per mostrare le cancellature -->
                <button onclick="highCanc('txt149')" style="color: #af4bfc">Mostra Cancellature</button>
                <!-- Includi il tag apply-templates per visualizzare il testo -->
                <div class="encoded-text" id="txt149">
                    <xsl:apply-templates select="//t:ab[@xml:id='p-149']"/>
                </div>
            </div>
        </div>

        <div class="glossario" id="glossario">
            <h2>Glossario</h2>
            <p> Questa sezione contiene approfondimenti riguardanti persone, luoghi, opere ed associazioni citate all'interno delle pagine codificate.</p>
            <br />
            <h4>Opere:</h4>
               <xsl:apply-templates select="//t:listBibl/t:bibl"/>
            <h4>Personaggi:</h4>
                <xsl:apply-templates select="//t:listPerson"/>
            <h4>Luoghi:</h4>
               <xsl:apply-templates select="//t:listPlace/t:place"/>
            <h4>Associazioni:</h4>
               <xsl:apply-templates select="//t:listOrg/t:org"/>
            <h4>Terminologia:</h4>
               <xsl:apply-templates select="//t:list[@type='Terminologia']"/>
        </div>


            <footer id="about">
                <p>
                email: m.trivelli2@studenti.unipi.it
                </p>
            </footer>
        </body>
    </html>
</xsl:template>

<!-- templates -->

<xsl:template match="//t:ab//t:lb">
    <xsl:for-each select="current()">
      <xsl:element name="ol">
        </xsl:element>
    </xsl:for-each>
   </xsl:template>

 <!-- Template cancellature -->

   <xsl:template match="//t:del">
      <span class="del" style = "display: none; color: #af4bfc; text-decoration: underline">
         <xsl:value-of select="current()"/>
      </span>
   </xsl:template>

<!-- Template gap -->

    <xsl:template match="//t:gap[@reason='illegible']">
      <span class="gap">
          <i class="fas fa-exclamation-circle"></i>
      </span>
   </xsl:template>

<!-- Template sostituzioni per correzioni e abbreviazioni -->
    <xsl:template match="//t:choice">
        <xsl:if test="t:sic">
            <span class="sic">
                <xsl:value-of select="t:sic"/>
            </span>
        </xsl:if>
        <xsl:if test="t:corr">
            <span class="corr" style="background: lightgreen; display:none">
                <xsl:value-of select="t:corr"/>
            </span>
        </xsl:if>
        <xsl:if test="t:abbr">
            <span class="abbr" style="background: lightgreen; display:none">
                <xsl:value-of select="t:expan"/>
            </span>
        </xsl:if>
        <xsl:if test="t:expan">
            <span class="expan">
                <xsl:value-of select="t:abbr"/>
            </span>
        </xsl:if>
    </xsl:template>


       <!--template list-->
    <xsl:template match="t:list">
        <div>
        <ol>
            <xsl:apply-templates select="t:item"/>
        </ol>
        </div>
    </xsl:template>

    <xsl:template match="t:item">
        <li>
        <xsl:value-of select="t:gloss"/>
        <p><a href="{t:gloss/@source}">Fonte</a></p>
        </li>
    </xsl:template>

  <!--template persone-->
    <xsl:template match="t:person">
        <p>
            <a href="{t:persName/t:ref/@target}" target="_blank">
                <xsl:value-of select="concat(t:persName/t:forename, ' ', t:persName/t:surname)"/>
            </a>
        </p>
        
    </xsl:template>

   <!--template luoghi-->
    <xsl:template match="t:place">
        <div>
            <strong><xsl:value-of select="t:placeName"/></strong> - <xsl:value-of select="t:settlement"/>, <xsl:value-of select="t:country"/>
        </div>
    </xsl:template>

   <!-- template opere -->
    <xsl:template match="t:listBibl/t:bibl">
        <div>
            <strong><xsl:value-of select="t:author/t:surname"/>, <xsl:value-of select="t:author/t:forename"/></strong>: 
            <em><xsl:value-of select="t:title[@type='main']"/></em>,
            <xsl:text> </xsl:text><xsl:value-of select="t:pubPlace/t:placeName"/><xsl:value-of select="t:publisher"/>,
            <xsl:text> </xsl:text><xsl:value-of select="t:date/@when"/>
        </div>
    </xsl:template>

   <!-- template associazioni -->
    <xsl:template match="t:org">
      <p>
         <strong><xsl:value-of select="t:orgName"/></strong>
         <br/>
         <xsl:value-of select="t:desc"/>
      </p>
    </xsl:template>

 <!--Template aggiunte-->
    <xsl:template match="t:add">
        <xsl:choose>
            <!--Aggiunte sopra-->
            <xsl:when test="@place ='above'" >
                <xsl:copy>
                    <span class="add-a" style="background: lightcoral; display:none">
                        <xsl:apply-templates select="node()" />
                        <!-- Applica lo stile di choice all'elemento choice -->
                        <xsl:apply-templates select="choice" />
                    </span>
                </xsl:copy>
            </xsl:when>
         
            <!--Aggiunte sotto-->
            <xsl:when test="@place ='below'">
                <span class="add-b" style="background: lightcoral; display:none">
                    <xsl:apply-templates select="node()" />
                </span>
            </xsl:when> 
            <!--Aggiunte in linea-->
            <xsl:when test="@place ='inline'">
                <span class="add-i" style="background: lightcoral; display:none">
                    <xsl:apply-templates select="node()" />
                </span>
            </xsl:when>
            <!--Aggiunta -->
            <xsl:when test="@place ='margin right inspace'">
                <span class="add-mri" style="background: lightcoral; display:none">
                    <xsl:apply-templates select="node()" />
                </span>
            </xsl:when>
        </xsl:choose>  
    </xsl:template>

</xsl:stylesheet>

