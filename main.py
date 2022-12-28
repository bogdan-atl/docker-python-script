import favicon
import urllib.request

url = "https://skillfactory.ru/"
icons = favicon.get(url)
icon = icons[0]
print(icon.url)

urllib.request.urlretrieve(icon.url, "icon.png")
