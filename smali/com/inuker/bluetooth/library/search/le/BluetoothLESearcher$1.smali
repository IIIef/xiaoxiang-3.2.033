.class Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$1;
.super Ljava/lang/Object;
.source "BluetoothLESearcher.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$1;->this$0:Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher$1;->this$0:Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;

    new-instance v1, Lcom/inuker/bluetooth/library/search/SearchResult;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/search/SearchResult;-><init>(Landroid/bluetooth/BluetoothDevice;I[B)V

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;->access$200(Lcom/inuker/bluetooth/library/search/le/BluetoothLESearcher;Lcom/inuker/bluetooth/library/search/SearchResult;)V

    return-void
.end method
