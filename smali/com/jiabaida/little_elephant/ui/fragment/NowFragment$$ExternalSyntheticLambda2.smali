.class public final synthetic Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/jiabaida/little_elephant/util/DialogUtils$OnSureClickListener;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

.field public final synthetic f$1:Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;->f$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;->f$1:Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    return-void
.end method


# virtual methods
.method public final onClick(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;->f$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$$ExternalSyntheticLambda2;->f$1:Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;

    invoke-virtual {v0, v1, p1, p2}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->lambda$showPswDialog$2$com-jiabaida-little_elephant-ui-fragment-NowFragment(Lcom/jiabaida/little_elephant/eventbus/EventBusMsg;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
