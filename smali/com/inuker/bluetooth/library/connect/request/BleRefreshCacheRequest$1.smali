.class Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest$1;
.super Ljava/lang/Object;
.source "BleRefreshCacheRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;->processRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest$1;->this$0:Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest$1;->this$0:Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/connect/request/BleRefreshCacheRequest;->onRequestCompleted(I)V

    return-void
.end method
