.class Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;
.super Ljava/lang/Object;
.source "ControlFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 163
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$000(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jiabaida/little_elephant/entity/ControlBean;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/ControlBean;->getType()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 190
    :cond_0
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;-><init>()V

    .line 191
    sget-object p2, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->resetCapacity:[B

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->setContent([B)V

    .line 192
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 193
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 184
    :cond_1
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;-><init>()V

    .line 185
    sget-object p2, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->clearProtection:[B

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->setContent([B)V

    .line 186
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 187
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    goto :goto_0

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->canableOperate()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 178
    :cond_3
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/jiabaida/little_elephant/ui/activity/VoltageCalibrationActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    sget-object p2, Lcom/jiabaida/little_elephant/app/Constant_xx;->KEY_Activity_Title:Ljava/lang/String;

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    const p4, 0x7f0d012c

    invoke-virtual {p3, p4}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$200(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)V

    goto :goto_0

    .line 166
    :cond_5
    new-instance p1, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;

    invoke-direct {p1}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;-><init>()V

    .line 167
    sget-object p2, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->openBalance:[B

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->setContent([B)V

    .line 168
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;->access$100(Lcom/jiabaida/little_elephant/ui/fragment/ControlFragment;)Lcom/jiabaida/little_elephant/entity/ICMDResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSControlCMDEntity;->setCmdResponse(Lcom/jiabaida/little_elephant/entity/ICMDResponse;)V

    .line 169
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->getInstance()Lcom/jiabaida/little_elephant/util/BluetoothUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->send(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)Z

    :goto_0
    return-void
.end method
