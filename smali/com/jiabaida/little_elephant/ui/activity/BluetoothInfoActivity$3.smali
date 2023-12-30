.class Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$3;
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

    .line 223
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 232
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "closeFactoryCMDResponse fail"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 226
    invoke-static {}, Lcom/jiabaida/little_elephant/ui/activity/BluetoothInfoActivity;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "closeFactoryCMDResponse success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
