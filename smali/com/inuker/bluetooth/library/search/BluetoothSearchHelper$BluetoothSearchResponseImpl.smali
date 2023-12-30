.class Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;
.super Ljava/lang/Object;
.source "BluetoothSearchHelper.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothSearchResponseImpl"
.end annotation


# instance fields
.field response:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

.field final synthetic this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->response:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    return-void
.end method


# virtual methods
.method public onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->response:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V

    return-void
.end method

.method public onSearchCanceled()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->response:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchCanceled()V

    .line 86
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->access$002(Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;)Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->response:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchStarted()V

    return-void
.end method

.method public onSearchStopped()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->response:Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;

    invoke-interface {v0}, Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;->onSearchStopped()V

    .line 80
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper$BluetoothSearchResponseImpl;->this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;->access$002(Lcom/inuker/bluetooth/library/search/BluetoothSearchHelper;Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;)Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    return-void
.end method
