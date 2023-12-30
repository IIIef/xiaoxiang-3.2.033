.class Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;
.super Ljava/lang/Object;
.source "ConnectResistanceActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onButtonClick(ILjava/lang/String;Lcom/jiabaida/little_elephant/entity/ResistanceItemBean;)V
    .locals 3

    .line 133
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .line 134
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    float-to-int v0, p2

    const v1, 0x186a0

    const v2, -0x186a0

    invoke-static {v0, v1, v2}, Lcom/jiabaida/little_elephant/entity/BleCommand;->IsInputProtect(III)Z

    move-result v0

    invoke-static {p3, v0}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$002(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;Z)Z

    .line 135
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 136
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-virtual {p3}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->showLoading()V

    .line 138
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$100(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/jiabaida/little_elephant/entity/BMSResistanceCMDEntity;->setResistance(IF)V

    .line 139
    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p3}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/jiabaida/little_elephant/adapter/ResistanceAdapter;->setItemParamsData(IF)V

    .line 140
    invoke-static {}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->getInstance()Lcom/jiabaida/little_elephant/util/BlueCmdUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-static {p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->access$300(Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;)Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/util/BlueCmdUtils;->setSleepCmd(Lcom/jiabaida/little_elephant/entity/BMSFactoryModeCMDEntity;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0d0189

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "-1000~1000"

    aput-object v1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/ConnectResistanceActivity;->showDefaultMsg(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onItemClick(ILcom/jiabaida/little_elephant/entity/ResistanceItemBean;)V
    .locals 0

    return-void
.end method
