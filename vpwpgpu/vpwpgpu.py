#versionVpwpgpu = '1.0'
from flask import Flask, request, render_template
#from string import Template
from jinja2 import Template
import os

array = []

app = Flask(__name__) #nombre



@app.route('/') #la ruta en la direccion o sea 127.0.0.1:5000/
def hello_world():
	return render_template('jasen.html')


# video-player-web/src/main/webapp/
# video-player-web/src/main/webapp/portal/
# video-player-web/src/main/resources/treeProperties/
# I've mangled the create jsp thing since I didn't want to create any files
# the rest is work in progress - try it on for size

@app.route('/resultado', methods=['GET', 'POST'])
def jasen():
    if request.method == 'POST':
        result = request.form
        print(result)
        if result.get('nombrePortal'):
            return render_template("jasen.html", num_pages=int(result['nombrePortal']))
        else:
            for n in range(result.get('nombrePortal')):
                createJsp(result["pagina_"+str(n)],result["divclass_"+str(n)], result["titulo_"+str(n)], result["subtitulo_"+str(n)])
            return render_template("jasen.html", result=result)
    return render_template('jasen.html')


def createJsp(pagina, divclass, titulo, subtitulo):
    filename = f"{pagina}/xhtml.jsp"
    # os.makedirs(os.path.dirname(filename), exist_ok=True)
    # f = open(filename,'w')
    # f.close()
    print(filename, pagina, divclass, titulo, subtitulo)

'''
@app.route('/pregunta',methods = ['POST', 'GET']) #la ruta en la direccion o sea 127.0.0.1:5000/
def preguntaPagina():
	if request.method == 'POST':
       result = request.form
       
	return render_template('interfaz.html')

@app.route('/resultado',methods = ['POST', 'GET'])
def result():
   if request.method == 'POST':
      result = request.form
      array.append(result)
      createJsp(result["pagina"],result["divclass"], result["titulo"], result["subtitulo"])
      return render_template("resultado.html",result = result)



def createJsp(pagina, divclass, titulo, subtitulo):
	filename = f"{pagina}/xhtml.jsp"
	os.makedirs(os.path.dirname(filename), exist_ok=True)
	f = open(filename,'w')


	message = """<%@include file="../includes/taglibs.jsp"%>
<%@include file="../includes/headerXhtml.jsp"%>

<div class="""+ divclass +"""></div>
<section class="container move">

  <header class="cabezote">
    <h1> """+ titulo +"""</h1>
    <h3>"""+ subtitulo +"""</h3>
  </header>

  <div class="row">
    <c:choose>
      <c:when test="${not empty favoriteResources}">
        <c:forEach items="${favoriteResources}" var="resource">
          <div class="col-xs-12 col-lg-4">
            <div class="video">
              <c:choose>
                <c:when test="${resource.type eq 'PUBLISHINGVIDEO'}">
                  <!-- VIDEO -->
                  <video width="100%" preload="none" controls controlsList="nodownload" data-resource-id="${resource.id}" src="${resource.downloadUrl}"
                    poster="${resource.previews[node.properties.previewResolution.simpleValue]}">
                  </video>
                  <div class="nameVideo">${resource.name}</div>
                </c:when>
                <c:when test="${resource.type eq 'WALLPAPER'}">
                  <!-- IMAGEN -->
                  <div>
                    <img src="${vpf:getDownloadImageUrl(resource.downloadUrl, 'HIGH')}">
                  </div>
                  <div class="nameVideo">${resource.name}</div>
                </c:when>
              </c:choose>

              <div class="functions sharingtree">
                <ul>
                  <a id="whatsappShare" href="${whatsappShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                    <li><i class="fa fa-whatsapp" aria-hidden="true"></i> </li>
                  </a>
                  <a id="facebookShare" href="${facebookShare}" target="_blank" onclick="getLocalSharedUrl(this,${resource.id})">
                    <li class="facebook"><i class="fa fa-facebook" aria-hidden="true"></i>  </li>
                  </a>
                  <a onclick="saveFavorite(this, ${msisdn}, ${resource.id});">
                    <li><i class="fa ${favorites.contains(resource.id) ? 'fa fa-heart' : 'fa fa-heart-o'}" aria-hidden="true"></i> </li>
                  </a>
                </ul>
              </div>

            </div>
          </div>
        </c:forEach>
      </c:when>
      <c:otherwise>
        <div style="padding-top: 30px">
          <p>No hemos encontrado videos en este momento, por favor intenta de nuevo m&aacute;s tarde</p>
        </div>
      </c:otherwise>
    </c:choose>
  </div>
</section>
</br>
</br>
<%@include file="../includes/footerXhtml.jsp"%>"""

	f.write(message)
	f.close()
	return

'''




def crearCompartir(seccion):
	filename = seccion + "/xhtml.jsp"
	pass

def crearFavoritos():
	filename = "favoritos/xhtml.jsp"
	pass

def crearIndex():
	filename = "index/xhtml.jsp"
	pass

def crearIncludes():
	filename = "includes/footerXhtml.jsp"
	filename1 = "includes/headerXhtml.jsp"
	filename2 = "includes/menuXhtml.jsp"
	pass

def crearLogin():
	filename = "login/xhtml.jsp"
	pass

def crearPremium():
	filename = "premium/xhtml.jsp"
	pass

def crearTerminos():
	filename = "terminos/xhtml.jsp"
	pass

def ifIndex():
	 sharingtwo = "functions sharingtwo"

def reemplazarTitulo():
	#open the file
	filein = open( 'foo.txt' )
	#read it
	src = Template( filein.read() )
	#document data
	title = "This is the title"
	subtitle = "And this is the subtitle"
	list = ['first', 'second', 'third']
	d={ 'title':title, 'subtitle':subtitle, 'list':'\n'.join(list) }
	#do the substitution
	result = src.substitute(d)
	print (result)

if __name__=="__main__":
	app.run(debug=True) # debug=True para debugear