.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$2;
.super Ljava/lang/Object;
.source "BluetoothInfoActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 214
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->getParams2()V

    return-void
.end method
