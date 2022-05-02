CFLAGS = -std=c++20 -O2 -g
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

HelloTriangle: main.cpp HelloTriangleApplication.cpp
	g++ $(CFLAGS) -o HelloTriangle main.cpp HelloTriangleApplication.cpp  $(LDFLAGS)

.PHONY: test clean

run: HelloTriangle
	./HelloTriangle

clean:
	rm -f HelloTriangle

