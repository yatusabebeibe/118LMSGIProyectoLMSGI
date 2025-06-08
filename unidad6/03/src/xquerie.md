## 📘 **Funciones comunes en XQuery**

### 🔹 **1. `fn:string()`**

Convierte un valor a texto.

```xquery
fn:string(123)
```

🔸 Resultado: `"123"`

---

### 🔹 **2. `fn:concat(str1, str2, ...)`**

Concatena varios textos.

```xquery
fn:concat("Hola", " ", "Mundo")
```

🔸 Resultado: `"Hola Mundo"`

---

### 🔹 **3. `fn:substring(str, inicio, largo)`**

Extrae parte de un texto.

```xquery
fn:substring("Hola Mundo", 1, 4)
```

🔸 Resultado: `"Hola"`

---

### 🔹 **4. `fn:contains(str, buscar)`**

Devuelve `true` si el texto contiene el valor buscado.

```xquery
fn:contains("informática", "máti")
```

🔸 Resultado: `true`

---

### 🔹 **5. `fn:starts-with(str, inicio)`**

Devuelve `true` si el texto empieza con cierto valor.

```xquery
fn:starts-with("Hola", "Ho")
```

🔸 Resultado: `true`

---

### 🔹 **6. `fn:not(condición)`**

Invierte el valor booleano.

```xquery
fn:not(3 > 5)
```

🔸 Resultado: `true`

---

### 🔹 **7. `fn:count(nodos)`**

Cuenta cuántos nodos hay.

```xquery
fn:count(//libro)
```

---

### 🔹 **8. `fn:sum(nodos)`**

Suma valores numéricos.

```xquery
fn:sum(//precio)
```

---

### 🔹 **9. `fn:avg(nodos)`**

Calcula la media de los valores.

```xquery
fn:avg(//nota)
```

---

### 🔹 **10. `fn:round(numero)`**

Redondea un número.

```xquery
fn:round(4.6)
```

🔸 Resultado: `5`

---

### 🔹 **11. `fn:string-length(str)`**

Devuelve la longitud (número de caracteres) de un texto.

```xquery
fn:string-length("Hola")
```

🔸 Resultado: `4`

---

### 🔹 **12. `fn:distinct-values(nodos)`**

Elimina valores duplicados de una secuencia.

```xquery
fn:distinct-values(//libro/categoria)
```

🔸 Resultado: categorías únicas (sin repetir)

---

### 🔹 **13. `fn:ends-with(str, texto)`**

Devuelve `true` si el texto termina con lo indicado.

```xquery
fn:ends-with("archivo.xml", ".xml")
```

🔸 Resultado: `true`

---

### 🔹 **14. `format-number(numero, formato)`**

Da formato a un número según un patrón.

```xquery
format-number(1234.5678, '#.00')
```

🔸 Resultado: `1234.57` → redondea a 2 decimales

**Formatos comunes:**

* `#` → muestra el dígito solo si existe
* `0` → rellena con ceros si falta
* `#,##0.00` → separa miles y usa 2 decimales
  👉 Ej: `12345.6` → `12,345.60`

---

### 🔹 **15. `fn:max()` y `fn:min()`**

Calculan el valor máximo y mínimo.

```xquery
fn:max(//nota)
fn:min(//nota)
```

---

### 🔹 **16. `format-date(xs:date(...), patrón)`**

Convierte una **fecha** a **texto** siguiendo un **patrón personalizado**.

📌 **Ejemplo:**

```xquery
format-date(xs:date("2025-06-08"), "[D]/[M]/[Y]")
```

🔸 Resultado: `8/6/2025`

---

### 🧩 **Símbolos comunes en el patrón:**

| Símbolo | Significado                      |
| ------- | -------------------------------- |
| `[D]`   | Día sin ceros (8)                |
| `[DD]`  | Día con dos dígitos (08)         |
| `[M]`   | Mes sin ceros (6)                |
| `[MM]`  | Mes con dos dígitos (06)         |
| `[Y]`   | Año completo (2025)              |
| `[YY]`  | Últimos dos dígitos del año (25) |
| `[MNn]` | Nombre del mes (ej. `June`)      |
| `[DNn]` | Día de la semana (ej. `Sunday`)  |

🔸 Puedes combinar los símbolos como quieras para cambiar el formato:
Ej: `"[DD]-[MM]-[YY]"`, `"[DNn], [D] [MNn] [Y]"`