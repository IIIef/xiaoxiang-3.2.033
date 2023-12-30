.class public final synthetic Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity$$ExternalSyntheticLambda0;->f$0:Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;

    check-cast p1, Lcom/tbruyelle/rxpermissions2/Permission;

    invoke-virtual {v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/CommonWebActivity;->lambda$startTakePhotoPermissions$0$com-jiabaida-little_elephant-ui-activity-CommonWebActivity(Lcom/tbruyelle/rxpermissions2/Permission;)V

    return-void
.end method
