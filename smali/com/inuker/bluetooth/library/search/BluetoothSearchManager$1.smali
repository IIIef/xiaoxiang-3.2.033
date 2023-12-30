.class final Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;
.super Ljava/lang/Object;
.source "BluetoothSearchManager.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/search/BluetoothSearchManager;->search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 2

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra.search.result"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    iget-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    const/4 v1, 0x4

    invoke-interface {p1, v1, v0}, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;->onResponse(ILjava/lang/Object;)V

    return-void
.end method

.method public onSearchCanceled()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;->onResponse(ILjava/lang/Object;)V

    return-void
.end method

.method public onSearchStarted()V
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;->onResponse(ILjava/lang/Object;)V

    return-void
.end method

.method public onSearchStopped()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;->onResponse(ILjava/lang/Object;)V

    return-void
.end method
