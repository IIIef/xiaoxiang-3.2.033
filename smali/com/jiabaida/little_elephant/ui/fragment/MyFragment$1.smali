.class Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$1;
.super Ljava/lang/Object;
.source "MyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/MyFragment$1;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/MyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 167
    sput-boolean p2, Lcom/jiabaida/little_elephant/util/IdsLog;->DEBUG_SAVE:Z

    .line 168
    invoke-static {}, Lcom/jiabaida/little_elephant/util/SPUtils;->getInstance()Lcom/jiabaida/little_elephant/util/SPUtils;

    move-result-object p1

    const-string v0, "SP_KEY_Log"

    invoke-virtual {p1, v0, p2}, Lcom/jiabaida/little_elephant/util/SPUtils;->put(Ljava/lang/String;Z)V

    return-void
.end method
