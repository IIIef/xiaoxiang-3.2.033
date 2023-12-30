.class Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;
.super Ljava/lang/Object;
.source "BleRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/connect/request/BleRequest;->onResponse(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/connect/request/BleRequest;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;->this$0:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    iput p2, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;->this$0:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    iget-object v0, v0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponse:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;->this$0:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    iget-object v0, v0, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mResponse:Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;

    iget v1, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;->val$code:I

    iget-object v2, p0, Lcom/inuker/bluetooth/library/connect/request/BleRequest$1;->this$0:Lcom/inuker/bluetooth/library/connect/request/BleRequest;

    iget-object v2, v2, Lcom/inuker/bluetooth/library/connect/request/BleRequest;->mExtra:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;->onResponse(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
