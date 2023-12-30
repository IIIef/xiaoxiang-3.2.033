.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->initListerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 924
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BleUtils;->isFastDoubleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 925
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 926
    sget-object v0, Lcom/jiabaida/little_elephant/util/BleUtils;->bleList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 927
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getBleDevice()Lcom/clj/fastble/data/BleDevice;

    move-result-object p1

    const/4 v0, 0x1

    .line 928
    invoke-static {v0, p1}, Lcom/jiabaida/little_elephant/util/BleUtils;->changeBle(ILcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 934
    :cond_1
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d017e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->showDefaultMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 930
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$502(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Lcom/clj/fastble/data/BleDevice;)Lcom/clj/fastble/data/BleDevice;

    .line 931
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$902(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;I)I

    .line 932
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$9;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->access$700(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V

    :goto_1
    return-void
.end method
