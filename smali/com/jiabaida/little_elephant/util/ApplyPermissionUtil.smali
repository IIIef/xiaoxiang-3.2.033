.class public Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;
.super Ljava/lang/Object;
.source "ApplyPermissionUtil.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static newUtil()Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;
    .locals 1

    .line 22
    new-instance v0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;

    invoke-direct {v0}, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;-><init>()V

    return-object v0
.end method


# virtual methods
.method synthetic lambda$requestPermissions$0$com-jiabaida-little_elephant-util-ApplyPermissionUtil(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied. More info should be provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method synthetic lambda$requestPermissions$1$com-jiabaida-little_elephant-util-ApplyPermissionUtil(Lcom/tbruyelle/rxpermissions2/Permission;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->granted:Z

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is granted."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/Permission;->shouldShowRequestPermissionRationale:Z

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied. More info should be provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/Permission;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is denied."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public varargs requestPermissions(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEachCombined([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil$$ExternalSyntheticLambda0;-><init>(Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;)V

    .line 32
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public varargs requestPermissions(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-direct {v0, p1}, Lcom/tbruyelle/rxpermissions2/RxPermissions;-><init>(Landroidx/fragment/app/Fragment;)V

    iput-object v0, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;->rxPermission:Lcom/tbruyelle/rxpermissions2/RxPermissions;

    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/RxPermissions;->requestEachCombined([Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil$$ExternalSyntheticLambda1;-><init>(Lcom/jiabaida/little_elephant/util/ApplyPermissionUtil;)V

    .line 58
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
