.class public Lcom/inuker/bluetooth/library/search/BluetoothSearchManager;
.super Ljava/lang/Object;
.source "BluetoothSearchManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static search(Lcom/inuker/bluetooth/library/search/SearchRequest;Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V
    .locals 2

    .line 20
    new-instance v0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;-><init>(Lcom/inuker/bluetooth/library/search/SearchRequest;)V

    .line 21
    invoke-static {}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->getInstance()Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    move-result-object p0

    new-instance v1, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;

    invoke-direct {v1, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchManager$1;-><init>(Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;)V

    invoke-interface {p0, v0, v1}, Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;->startSearch(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V

    return-void
.end method

.method public static stopSearch()V
    .locals 1

    .line 47
    invoke-static {}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->getInstance()Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/IBluetoothSearchHelper;->stopSearch()V

    return-void
.end method
