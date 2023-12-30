.class Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$10;
.super Ljava/lang/Object;
.source "NowFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->onPermissionGranted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1105
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1106
    iget-object p2, p0, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment$10;->this$0:Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/jiabaida/little_elephant/ui/fragment/NowFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
