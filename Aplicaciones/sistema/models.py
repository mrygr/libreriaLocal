from tabnanny import verbose
from django.db import models
from .choices import tipoDocumento as td

# Create your models here.

class Usuario(models.Model):
    numDocumento = models.CharField(max_length=50, verbose_name='numero identificacion', primary_key=True)
    tipoDocumento = models.CharField(max_length=3, choices=td, default='CC', null=False)
    primerNombre = models.CharField(max_length=50, verbose_name='Primer nombre', null=False)
    segundoNombre = models.CharField(max_length=50, verbose_name='Segundo nombre', null=True)
    primerApellido = models.CharField(max_length=50, verbose_name='Primer apellido', null=False)
    segundoApellido = models.CharField(max_length=50, verbose_name='Segundo apellido', null=False)
    direccion = models.CharField(max_length=100, verbose_name='Direccion residencia', null=True) 
    telefono = models.CharField(max_length=50, verbose_name='Telefono contacto', null=True)

    
    def nombre_completo(self):
        '''return "{} {}, {} {}".format(self.primerNombre, self.segundoNombre, self.primerApellido, self.segundoApellido)'''
        return "{0}".format(self.numDocumento)

    def __str__(self):
        return self.nombre_completo()

    '''class Meta:
        verbose_name = 'usuario'
        verbose_name_plural = 'usuarios'
        db_table = 'usuario'
        ordering = ['primerApellido', '-segundoApellido']'''

class Libro(models.Model):
    ISBN = models.CharField(max_length=20, verbose_name='ISBN libro', primary_key=True)
    titulo = models.CharField(max_length=100, verbose_name='Titulo Libro', null=False)
    autor = models.CharField(max_length=100, verbose_name='Autor Libro', null=False)
    numPaginas = models.PositiveSmallIntegerField(null=False)

    def informacion_libro(self):
        '''return "{0} {1}, {2} {3}".format(self.ISBN, self.titulo, self.autor, self.numPaginas)'''
        return "{0}".format(self.ISBN)

    def __str__(self):
        return self.informacion_libro()

class Prestamo(models.Model):
    IDprestamo = models.AutoField(verbose_name='Identificador prestamo', primary_key=True)
    fechaPrestamo = models.DateField()
    fechaDevolucion = models.DateField()
    ISBN = models.ForeignKey(Libro, null=False, blank=False, on_delete=models.CASCADE)
    numDocumento = models.ForeignKey(Usuario, null=False, blank=False, on_delete=models.CASCADE)

    def informacion_prestamo(self):
        return "{} {}, {} {}, {}".format(self.IDprestamo, self.fechaPrestamo, self.fechaDevolucion, self.ISBN, self.numDocumento)

    def __str__(self):
        return self.informacion_prestamo()


