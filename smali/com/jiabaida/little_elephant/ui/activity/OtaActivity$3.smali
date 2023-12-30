.class Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$3;
.super Ljava/lang/Object;
.source "OtaActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;


# direct methods
.method constructor <init>(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 226
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    invoke-static {p1}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->access$700(Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity$3;->this$0:Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f0d00ba

    invoke-virtual {p3, p2, v0}, Lcom/jiabaida/little_elephant/ui/activity/OtaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
