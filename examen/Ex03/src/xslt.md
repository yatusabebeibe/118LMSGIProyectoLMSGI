## 📘 **Funciones comunes en XSLT**

### 1. `string()`

Convierte un valor a texto.

```xslt
<xsl:value-of select="string(123)" />
```

🔹 Salida: `123`

---

### 2. `concat(str1, str2, ...)`

Concatena textos.

```xslt
<xsl:value-of select="concat('Hola', ' ', 'Mundo')" />
```

🔹 Salida: `Hola Mundo`

---

### 3. `substring(str, start, length)`

Extrae parte de un texto.

```xslt
<xsl:value-of select="substring('Hola Mundo', 1, 4)" />
```

🔹 Salida: `Hola`

---

### 4. `contains(str, buscar)`

Devuelve `true` si el texto contiene lo buscado.

```xslt
<xsl:if test="contains(nombre, 'Juan')">
  <!-- hace algo si contiene "Juan" -->
</xsl:if>
```

---

### 5. `starts-with(str, inicio)`

Devuelve `true` si el texto empieza con algo.

```xslt
<xsl:if test="starts-with(nombre, 'A')">
  <!-- hace algo si empieza por A -->
</xsl:if>
```

---

### 6. `not(condición)`

Invierte el valor booleano.

```xslt
<xsl:if test="not(precio > 100)">
  <!-- si precio NO es mayor a 100 -->
</xsl:if>
```

---

### 7. `position()`

Devuelve la posición actual en un bucle.

```xslt
<xsl:for-each select="producto">
  <xsl:value-of select="position()" />
</xsl:for-each>
```

---

### 8. `last()`

Devuelve la última posición del bucle.

```xslt
<xsl:if test="position() = last()">
  <!-- si es el último elemento -->
</xsl:if>
```

---

### 9. `number()`

Convierte a número.

```xslt
<xsl:value-of select="number('45.7')" />
```

---

### 10. `sum(nodos)`

Suma los valores numéricos.

```xslt
<xsl:value-of select="sum(//precio)" />
```