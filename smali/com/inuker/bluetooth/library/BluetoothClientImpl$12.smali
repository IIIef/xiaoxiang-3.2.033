.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/search/response/SearchResponse;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->access$200(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 444
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const-string p1, "extra.search.result"

    .line 464
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/inuker/bluetooth/library/search/SearchResult;

    .line 465
    iget-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    invoke-interface {p2, p1}, Lcom/inuker/bluetooth/library/search/response/SearchResponse;->onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    goto :goto_0

    .line 469
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown code"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 456
    :cond_2
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    invoke-interface {p1}, Lcom/inuker/bluetooth/library/search/response/SearchResponse;->onSearchCanceled()V

    goto :goto_0

    .line 460
    :cond_3
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    invoke-interface {p1}, Lcom/inuker/bluetooth/library/search/response/SearchResponse;->onSearchStopped()V

    goto :goto_0

    .line 452
    :cond_4
    iget-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$12;->val$response:Lcom/inuker/bluetooth/library/search/response/SearchResponse;

    invoke-interface {p1}, Lcom/inuker/bluetooth/library/search/response/SearchResponse;->onSearchStarted()V

    :goto_0
    return-void
.end method
