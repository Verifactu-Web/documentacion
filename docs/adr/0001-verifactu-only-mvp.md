# ADR-0001: solo VERI*FACTU en el MVP

**Estado:** aceptado · **Fecha:** 2026-10-01

## Contexto

Las dos modalidades RRSIF exigen controles diferentes. VERI*FACTU remite en línea y simplifica controles propios que sí recaen en no verificable.

## Decisión

MVP solo VERI*FACTU, con cadena/hash y remisión automática. No se ofrece selector dual hasta que firma, eventos, comprobación y exportación estén certificados internamente.

## Consecuencia

Menor superficie de riesgo y mejor trazabilidad operativa; dependencia de conectividad y AEAT mitigada por cola durable y contingencia. La arquitectura deja un adapter para una modalidad futura.
