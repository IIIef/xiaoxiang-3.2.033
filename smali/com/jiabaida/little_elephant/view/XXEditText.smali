.class public Lcom/jiabaida/little_elephant/view/XXEditText;
.super Landroid/widget/LinearLayout;
.source "XXEditText.java"


# instance fields
.field private customEdtInput:Landroid/widget/EditText;

.field private customInputRoot:Landroid/widget/LinearLayout;

.field private customLine:Landroid/view/View;

.field private customTvWarn:Landroid/widget/TextView;

.field private editTextColor:I

.field private editTextHeight:F

.field private editTextHint:Ljava/lang/String;

.field private editTextHintColor:I

.field private editTextPaddingRight:F

.field private editTextSize:F

.field private editTextTxt:Ljava/lang/String;

.field private editTextWidth:F

.field private lineColorIndefault:I

.field private lineColorInput:I

.field private mContext:Landroid/content/Context;

.field private warnTextColor:I

.field private warnTextSize:F

.field private warnTextTxt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a006a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    sget-object v0, Lcom/jiabaida/little_elephant/R$styleable;->CustomEditTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x7

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextWidth:F

    .line 55
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHeight:F

    const/4 p2, 0x6

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextTxt:Ljava/lang/String;

    const/4 p2, 0x2

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHint:Ljava/lang/String;

    const/4 p2, 0x3

    const v1, 0x7f050029

    .line 58
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHintColor:I

    const/high16 p2, 0x41800000    # 16.0f

    .line 60
    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextSize:F

    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextColor:I

    const/16 p2, 0x8

    const v0, 0x7f05006a

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->lineColorIndefault:I

    const/16 p2, 0x9

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->lineColorInput:I

    const/16 p2, 0xa

    const v0, 0x7f05006b

    .line 64
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextColor:I

    const/16 p2, 0xc

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextTxt:Ljava/lang/String;

    const/16 p2, 0xb

    const/high16 v0, 0x41400000    # 12.0f

    .line 66
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextSize:F

    const/high16 p2, 0x43480000    # 200.0f

    .line 67
    iput p2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextPaddingRight:F

    .line 68
    invoke-direct {p0}, Lcom/jiabaida/little_elephant/view/XXEditText;->initView()V

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/view/View;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customLine:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jiabaida/little_elephant/view/XXEditText;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/jiabaida/little_elephant/view/XXEditText;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->lineColorInput:I

    return p0
.end method

.method static synthetic access$300(Lcom/jiabaida/little_elephant/view/XXEditText;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->lineColorIndefault:I

    return p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initView()V
    .locals 6

    const v0, 0x7f08005e

    .line 85
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customInputRoot:Landroid/widget/LinearLayout;

    const v0, 0x7f08005d

    .line 86
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    const v0, 0x7f08005f

    .line 87
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customLine:Landroid/view/View;

    const v0, 0x7f080060

    .line 88
    invoke-virtual {p0, v0}, Lcom/jiabaida/little_elephant/view/XXEditText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customTvWarn:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    new-instance v1, Lcom/jiabaida/little_elephant/view/XXEditText$1;

    invoke-direct {v1, p0}, Lcom/jiabaida/little_elephant/view/XXEditText$1;-><init>(Lcom/jiabaida/little_elephant/view/XXEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextWidth:F

    const/4 v2, -0x2

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_0

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    :goto_0
    iget v4, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHeight:F

    cmpl-float v5, v4, v3

    if-eqz v5, :cond_1

    float-to-int v2, v4

    :cond_1
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 124
    iget v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHintColor:I

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHintColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 127
    iget v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextColor:I

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextTxt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTop()I

    move-result v2

    iget v4, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextPaddingRight:F

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_5

    float-to-int v3, v4

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v3

    :goto_1
    iget-object v4, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 133
    iget v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->lineColorIndefault:I

    if-eqz v0, :cond_6

    .line 134
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customLine:Landroid/view/View;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->lineColorIndefault:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 135
    :cond_6
    iget v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextColor:I

    if-eqz v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customTvWarn:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customTvWarn:Landroid/widget/TextView;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "==r:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "---view:"

    invoke-static {v1, v0}, Lcom/jiabaida/little_elephant/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getEditTextText()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEditTextHint(Ljava/lang/String;)V
    .locals 1

    .line 182
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextHint:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditTextInput(Ljava/lang/String;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->editTextTxt:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customEdtInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setWarnText(Ljava/lang/String;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextTxt:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->customTvWarn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showWarnToast(Ljava/lang/String;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->warnTextTxt:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/jiabaida/little_elephant/view/XXEditText;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
