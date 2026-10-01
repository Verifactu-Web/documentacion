# ADR-0002: modular monolith primero

**Estado:** aceptado · **Fecha:** 2026-10-01

El fiscal core, órdenes y catálogo comparten transacciones fuertes. Se despliega una API modular y workers separados; solo se extraen servicios cuando haya un límite de carga/seguridad probado. Reduce coste y evita microservicios sin límites de dominio.
