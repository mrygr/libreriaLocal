from wsgiref import validate
from django.shortcuts import render, redirect
from .models import Libro, Prestamo, Usuario
from django.contrib import messages

# Create your views here.
def home(request):
    usuarios = Usuario.objects.all()
    return render(request, "gestionUsuarios.html", {"usuarios": usuarios})

def registrarUsuario(request):
    numDocumento = request.POST['inpDocumento']
    tipoDocumento = request.POST['inptipoDocumento']
    primerNombre = request.POST['inpPrimerNombre']
    segundoNombre = request.POST['inpSegundoNombre']
    primerApellido = request.POST['inpPrimerApellido']
    segundoApellido = request.POST['inpSegundoApellido']
    direccion = request.POST['inpDireccion']
    telefono = request.POST['inpTelefono']

    validacion = Usuario.objects.filter(pk = numDocumento)

    if validacion:
        messages.error(request, '¡El usuario ya existe!')
        return redirect('/')   
    else:     
        usuario = Usuario.objects.create(
            numDocumento = numDocumento,
            tipoDocumento = tipoDocumento,
            primerNombre = primerNombre,
            segundoNombre = segundoNombre,
            primerApellido = primerApellido,
            segundoApellido = segundoApellido,
            direccion = direccion,
            telefono = telefono
        )

        messages.success(request, '¡Usuario registrado!')
        return redirect('/')

def editarUsuario(request):
    numDocumento = request.POST['inpDocumento']
    tipoDocumento = request.POST['inptipoDocumento']
    primerNombre = request.POST['inpPrimerNombre']
    segundoNombre = request.POST['inpSegundoNombre']
    primerApellido = request.POST['inpPrimerApellido']
    segundoApellido = request.POST['inpSegundoApellido']
    direccion = request.POST['inpDireccion']
    telefono = request.POST['inpTelefono']

    usuario = Usuario.objects.get(pk = numDocumento)
    usuario.numDocumento = numDocumento
    usuario.tipoDocumento = tipoDocumento
    usuario.primerNombre = primerNombre
    usuario.segundoNombre = segundoNombre
    usuario.primerApellido = primerApellido
    usuario.segundoApellido = segundoApellido
    usuario.direccion = direccion
    usuario.telefono = telefono
    usuario.save()
    messages.success(request, '¡Usuario editado!')
    return redirect('/')

def eliminarUsuario(request, numDocumento):
    validacion = Prestamo.objects.filter(numDocumento = numDocumento)

    if validacion:
        messages.error(request, '¡Hay prestamos activos!')
        return redirect('/')
    else: 
        usuario = Usuario.objects.get(pk = numDocumento)
        usuario.delete()
        messages.success(request, '¡Usuario eliminado!')
        return redirect('/')

def edicionUsuarios(request, numDocumento):
    usuario = Usuario.objects.get(pk = numDocumento) 
    return render(request, "editarUsuarios.html", {"usuario": usuario})




def gestionLibros(request):
    libros = Libro.objects.all()
    return render(request, "gestionLibros.html", {"libros": libros})

def registrarLibro(request):
    ISBN = request.POST['inpISBN']
    titulo = request.POST['inpTitulo']
    autor = request.POST['inpAutor']
    numPaginas = request.POST['inpNumPaginas']

    validacion = Libro.objects.filter(pk = ISBN)

    if validacion:
        messages.error(request, '¡El libro ya existe!')
        return redirect('/gestionLibros')        
    else:
        libro = Libro.objects.create(
            ISBN = ISBN,
            titulo = titulo,
            autor = autor,
            numPaginas = numPaginas
        )

        messages.success(request, '¡libro registrado!')
        return redirect('/gestionLibros')        

def editarLibro(request):
    ISBN = request.POST['inpISBN']
    titulo = request.POST['inpTitulo']
    autor = request.POST['inpAutor']
    numPaginas = request.POST['inpNumPaginas']

    libro = Libro.objects.get(pk = ISBN)
    libro.ISBN = ISBN
    libro.titulo = titulo
    libro.autor = autor
    libro.numPaginas = numPaginas
    libro.save()
    messages.success(request, '¡Libro editado!')
    return redirect('/gestionLibros')

def edicionLibros(request, ISBN):
    libro = Libro.objects.get(pk = ISBN) 
    return render(request, "editarLibros.html", {"libro": libro})

def eliminarLibro(request, ISBN):
    libro = Libro.objects.get(pk = ISBN)
    validacion = Prestamo.objects.filter(ISBN = ISBN)

    if validacion:
        messages.error(request, '¡El libro esta prestado!')
        return redirect('/gestionLibros')
    else:   
        libro.delete()
        messages.success(request, '¡Libro eliminado!')
        return redirect('/gestionLibros')



def gestionPrestamos(request):
    prestamos = Prestamo.objects.all()
    return render(request, "gestionPrestamos.html", {"prestamos": prestamos})

def registrarPrestamo(request):
    ISBN = request.POST['inpISBN']
    numDocumento = request.POST['inpNumDocumento']
    fechaPrestamo = request.POST['inpFechaPrestamo']
    fechaDevolucion = request.POST['inpFechaDevolucion']

    validacion = Prestamo.objects.filter(ISBN = ISBN)

    if validacion:
        messages.error(request, '¡El libro ya esta prestado!')
        return redirect('/gestionPrestamos')
    else:
        prestamo = Prestamo.objects.create(
            fechaPrestamo = fechaPrestamo,
            fechaDevolucion = fechaDevolucion,
            ISBN = Libro.objects.get(pk = ISBN),
            numDocumento = Usuario.objects.get(pk = numDocumento)
        )

        messages.success(request, '¡Prestamo registrado!')
        return redirect('/gestionPrestamos')        

def edicionPrestamos(request, IDprestamo):
    prestamo = Prestamo.objects.get(pk = IDprestamo)
    formatFechaPres = prestamo.fechaPrestamo.strftime("%Y-%m-%d")
    formatFechaDevo = prestamo.fechaDevolucion.strftime("%Y-%m-%d")
    prestamo.fechaPrestamo = formatFechaPres
    prestamo.fechaDevolucion = formatFechaDevo

    return render(request, "editarPrestamos.html", {"prestamo": prestamo})

def editarPrestamo(request):
    IDprestamo = request.POST['inpIDprestamo']
    ISBN = request.POST['inpISBN']
    numDocumento = request.POST['inpNumDocumento']
    fechaPrestamo = request.POST['inpFechaPrestamo']
    fechaDevolucion = request.POST['inpFechaDevolucion']

    prestamo = Prestamo.objects.get(pk = IDprestamo)
    prestamo.IDprestamo = IDprestamo
    prestamo.ISBN = Libro.objects.get(pk = ISBN)
    prestamo.numDocumento = Usuario.objects.get(pk = numDocumento)
    prestamo.fechaPrestamo = fechaPrestamo
    prestamo.fechaDevolucion = fechaDevolucion
    prestamo.save()
    messages.success(request, 'Prestamo editado!')
    return redirect('/gestionPrestamos')        

def eliminarPrestamo(request, IDprestamo):
    prestamo = Prestamo.objects.get(IDprestamo=IDprestamo)
    prestamo.delete()
    messages.success(request, '¡Prestamo finalizado!')
    return redirect('/gestionPrestamos')        
