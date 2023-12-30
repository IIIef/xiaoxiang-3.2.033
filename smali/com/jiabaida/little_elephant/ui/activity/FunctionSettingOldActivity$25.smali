.class Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;
.super Ljava/lang/Object;
.source "FunctionSettingOldActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)V
    .locals 0

    .line 655
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 664
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->hideLoading()V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    .line 658
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->access$2300(Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;)Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSCloseFactoryModeCMDEntity;->setInit()V

    .line 659
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity$25;->this$0:Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;

    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/ui/activity/FunctionSettingOldActivity;->hideLoading()V

    return-void
.end method
