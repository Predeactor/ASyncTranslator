# ASyncTranslator

A package to transform your **sync** methods to **async** methods and to turn **async** methods to **sync** methods.

🤩 ✨ **FINALLY TYPED EDITION!!!** ❤️ 🤌

This is an heavy inspiration from Django's implementation.
Please see https://github.com/django/asgiref/blob/30d891fab0a7caa265bda0cbe04bb35a00a3b3b9/asgiref/sync.py for original reference.

## Show me an example, pretty please.

Here you go!

To transform from an **async** to **sync** method:
```py
from asynctranslator import async_to_sync

async def my_async_func(food_name: str) -> int:
    print(f"{food_name} are my favorite!")
    return 42

def main():
    final_func = async_to_sync(my_async_func)
    result = final_func("Cookies")
    print(result)  # We got "42"!

main()
```

And now, to transform from a **sync** to **async** method:
```py
import asyncio
from asynctranslator import sync_to_async

def my_async_func(food_name: str) -> int:
    print(f"{food_name} are my favorite!")
    return 42

async def main():
    final_func = sync_to_async(my_async_func)
    result = await final_func("Cookies")
    print(result)  # We got "42"!

asyncio.run(main())
```

But you can also use it as a decorator!

```py
import asyncio
from asynctranslator import sync_to_async

@sync_to_async
def my_async_func(food_name: str) -> int:
    print(f"{food_name} are my favorite!")
    return 42

async def main():
    result = await my_async_func("Cookies")
    print(result)

asyncio.run(main())
```
