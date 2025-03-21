# GridRectangularLoadingHexagonaly



The challenge this time was to develop a honeycomb grid where each item could load in a circular manner.

To achieve this, the best approach at the start would be to draw everything out and observe the patterns or look for something geometrically usable to achieve the circular loading effect. In the example, squares were used, but in practice, they are rectangles. Therefore, throughout the process, I will always consider different heights and widths, aiming to be able to use it for both squares and rectangles. This approach would also work for circles.


![Image Alt Text](./images/Frame1.png)

![Image Alt Text](./images/Frame0.png)
![Image Alt Text](./images/Frame01.png)
![Image Alt Text](./images/Frame2.png)
![Image Alt Text](./images/Frame3.png)


By observing and graphing, it became clear that in order to load the grid in a circular manner, I would need to calculate the points to achieve a loading effect in an elliptical shape, as shown in the representation to the side. Therefore, I would have to find a function to define Rx and Ry for each of the circumscribed ellipses.

The second observation is that the loading starts from the center point. First, I go to the first ellipse. In this ellipse, I don’t have a point between each of the vertices. In the second ellipse, I already have one point between each vertex of the hexagon, and in the third, I have three points. So, with each new ellipse, I always have a point placed between each vertex of the hexagon.


![Image Alt Text](./images/Frame4.png)
![Image Alt Text](./images/Frame5.png)
![Image Alt Text](./images/Frame6.png)

The result can be seen on my linkedIn post:
https://www.linkedin.com/posts/gstvdfnbch_getontrendy-activity-7239256790771613696-2mIo?utm_source=share&utm_medium=member_desktop&rcm=ACoAACWelEwB0dHZRn3OePxJC5k0BEO-5sVD-PM

Or you can download on App Store: https://apps.apple.com/br/app/trendy-capture-moments/id6505122081?l=en-GB
