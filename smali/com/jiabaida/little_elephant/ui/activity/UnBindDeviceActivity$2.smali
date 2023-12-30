.class Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$2;
.super Ljava/lang/Object;
.source "UnBindDeviceActivity.java"

# interfaces
.implements Lcom/jiabaida/little_elephant/adapter/BindDevicesAdapter$OnDeviceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnBind(Ljava/lang/String;I)V
    .locals 0

    .line 119
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity$2;->this$0:Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;

    invoke-static {p2, p1}, Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;->access$200(Lcom/jiabaida/little_elephant/ui/activity/UnBindDeviceActivity;Ljava/lang/String;)V

    return-void
.end method
