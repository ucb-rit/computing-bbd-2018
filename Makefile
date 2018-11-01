all: spark.html spark_slides.html resources.html resources_slides.html

spark.html: spark.md
	pandoc -s -o spark.html spark.md

spark_slides.html: spark.md
	pandoc -s --webtex -t slidy -o spark_slides.html spark.md

resources.html: resources.md
	pandoc -s -o resources.html resources.md

resources_slides.html: resources.md
	pandoc -s --webtex -t slidy -o resources_slides.html resources.md


clean:
	rm -rf *.html
