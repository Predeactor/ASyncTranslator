__version__: str = "1.0.0"
__author__: str = "Julien Mauroy (See LICENSE)"

from .sync import AsyncToSync as AsyncToSync
from .sync import SyncToAsync as SyncToAsync
from .sync import async_to_sync as async_to_sync
from .sync import sync_to_async as sync_to_async

__all__ = [
    "async_to_sync",
    "sync_to_async",
    "AsyncToSync",
    "SyncToAsync",
]
