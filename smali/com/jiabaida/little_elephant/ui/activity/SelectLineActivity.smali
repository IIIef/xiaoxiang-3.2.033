.class public Lcom/jiabaida/little_elephant/ui/activity/SelectLineActivity;
.super Landroid/app/Activity;
.source "SelectLineActivity.java"


# instance fields
.field private tv_textline:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a0021

    .line 24
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SelectLineActivity;->setContentView(I)V

    const p1, 0x7f08029d

    .line 25
    invoke-virtual {p0, p1}, Lcom/jiabaida/little_elephant/ui/activity/SelectLineActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SelectLineActivity;->tv_textline:Landroid/widget/TextView;

    .line 26
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    iget-object p1, p0, Lcom/jiabaida/little_elephant/ui/activity/SelectLineActivity;->tv_textline:Landroid/widget/TextView;

    sget-object v0, Lcom/jiabaida/little_elephant/util/BluetoothUtil;->TestLine:Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
