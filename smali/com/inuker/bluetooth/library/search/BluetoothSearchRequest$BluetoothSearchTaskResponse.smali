.class Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;
.super Ljava/lang/Object;
.source "BluetoothSearchRequest.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/search/response/BluetoothSearchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothSearchTaskResponse"
.end annotation


# instance fields
.field task:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

.field final synthetic this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->task:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    return-void
.end method


# virtual methods
.method public onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onDeviceFounded %s"

    .line 158
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    invoke-static {v0, p1}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->access$000(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;Lcom/inuker/bluetooth/library/search/SearchResult;)V

    return-void
.end method

.method public onSearchCanceled()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->task:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onSearchCanceled"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchStarted()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->task:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onSearchStarted"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public onSearchStopped()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->task:Lcom/inuker/bluetooth/library/search/BluetoothSearchTask;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s onSearchStopped"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest$BluetoothSearchTaskResponse;->this$0:Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;->access$100(Lcom/inuker/bluetooth/library/search/BluetoothSearchRequest;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
