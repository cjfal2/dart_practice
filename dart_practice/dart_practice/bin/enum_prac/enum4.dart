enum Planet {
  mercury(distanceFromSun: 57.9 * 1000000, radius: 2439.7),
  venus(distanceFromSun: 108.2 * 1000000, radius: 6051.8),
  earth(distanceFromSun: 149.6 * 1000000, radius: 6391.0),
  mars(distanceFromSun: 227.9 * 1000000, radius: 3389.5);

  final double distanceFromSun;
  final double radius;

  const Planet({required this.distanceFromSun, required this.radius});

  static getSurfaceArea(double planetRadius) {
    return 4 * 3.141592 * planetRadius * planetRadius;
  }

  double getSurf(double planetRadius) {
    return 4 * 3.141592 * planetRadius * planetRadius;
  }
}

void main() {
  Planet mars = Planet.mars;

  print(Planet.getSurfaceArea(mars.radius));

  print(mars.getSurf(mars.radius));
}
