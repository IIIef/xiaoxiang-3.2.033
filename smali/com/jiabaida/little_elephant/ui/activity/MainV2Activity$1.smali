.class Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;
.super Ljava/lang/Object;
.source "MainV2Activity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/view/DialogHelper$DialogMyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->onEventBusMsg(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

.field final synthetic val$updateUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;->val$updateUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public DismissListener(Landroid/app/Dialog;Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public leftBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public rightBottomViewClick(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;->this$0:Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;

    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity$1;->val$updateUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;->access$000(Lcom/jiabaida/little_elephant/ui/activity/MainV2Activity;Ljava/lang/String;)V

    return-void
.end method
