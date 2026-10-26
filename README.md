# Combinational Circuit Design in VHDL

Este repositorio contiene la implementación y descripción en VHDL de un sistema lógico combinacional modular. El diseño consta de tres submódulos funcionales independientes (`func1`, `func2` y `func3`) integrados dentro de una arquitectura estructural de nivel superior (`main`).

---

## ⚙️ Descripción estructural y funcional

El sistema principal (`main`) toma tres entradas binarias ($A, B, C$) y genera una única salida ($Y$) mediante la interconexión de tres bloques funcionales:


1. **`func1` (Descripción Funcional - Esquema Circuital):**
   * **Entradas:** `A1`, `B1`, `C1` | **Salida:** `Z1`
   * **Implementación:** Puertas lógicas compuestas. Una puerta NAND combinada mediante XOR con una puerta NOR que incluye inversión en la entrada $C_1$.
   * **Expresión lógica:** $Z_1 = \overline{A_1 \cdot B_1} \oplus \overline{B_1 + \overline{C_1}}$

2. **`func2` (Descripción Funcional - Minitérminos):**
   * **Entradas:** `A2`, `B2`, `C2` | **Salida:** `Z2`
   * **Implementación:** Implementación directa de la función expresada como sumatoria de minitérminos:
     $$Z_2 = \Sigma_{A2, B2, C2}(0, 1, 2, 5)$$

3. **`func3` (Descripción Funcional - Tabla de Verdad):**
   * **Entradas:** `A3`, `B3`, `C3` | **Salida:** `Z3`
   * **Implementación:** Descripción concurrente derivada de su correspondiente tabla de verdad.

4. **`main` (Descripción Estructural):**
   * **Entradas:** `A`, `B`, `C` | **Salida:** `Y`
   * **Implementación:** Instanciación y mapeo de puertos (`component` y `port map`) de los submódulos `func1`, `func2` y `func3`.

---

## 📁 Estructura del Proyecto

```text
combinational-circuit-design/
├── src/
│   ├── func1.vhd    -- Descripción funcional del bloque Func1
│   ├── func2.vhd    -- Descripción funcional del bloque Func2
│   ├── func3.vhd    -- Descripción funcional del bloque Func3
│   └── main.vhd     -- Descripción estructural del sistema completo
└── README.md        -- Documentación del proyecto
