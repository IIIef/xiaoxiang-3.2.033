.class public final Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;
.super Ljava/lang/Object;
.source "ProtectTimesActivity.kt"

# interfaces
.implements Lcom/jiabaida/little_elephant/entity/ICMDResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2",
        "Lcom/jiabaida/little_elephant/entity/ICMDResponse;",
        "fail",
        "",
        "cmdEntity",
        "Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;",
        "status",
        "",
        "success",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;

.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;


# direct methods
.method public static synthetic $r8$lambda$RRfGxJvvCY6C53Cl7XI_ViinOfs(Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;->success$lambda-0(Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V

    return-void
.end method

.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;

    iput-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;->$adapter:Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final success$lambda-0(Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V
    .locals 1

    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cmd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;->getProtectionStatList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;->setNewData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 0

    const-string p1, "xzx"

    const-string p2, "\u83b7\u53d6\u5931\u8d25"

    .line 64
    invoke-static {p1, p2}, Lcom/jiabaida/little_elephant/util/IdsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public success(Lcom/jiabaida/little_elephant/entity/BMSCommandEntity;I)V
    .locals 2

    const-string p2, "null cannot be cast to non-null type com.jiabaida.little_elephant.entity.BMSProtectionStatCMDEntity"

    .line 55
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;

    .line 56
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->access$updateProtect(Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V

    .line 57
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;

    iget-object v0, p0, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2;->$adapter:Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;

    new-instance v1, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity$initView$2$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/adapter/ProtectTimesAdapter;Lcom/jiabaida/little_elephant/entity/BMSProtectionStatCMDEntity;)V

    invoke-virtual {p2, v1}, Lcom/jiabaida/little_elephant/ui/activity/ProtectTimesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
