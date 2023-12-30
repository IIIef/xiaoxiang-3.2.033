.class public final synthetic Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;

.field public final synthetic f$1:Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;->f$1:Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4$$ExternalSyntheticLambda0;->f$1:Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;

    invoke-virtual {v0, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectParamsActivity$4;->lambda$success$0$com-jiabaida-little_elephant-ui-activity-ProtectParamsActivity$4(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;)V

    return-void
.end method
