.class public Lcom/example/steven/myview/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static final EXTRA_CLASS:Ljava/lang/String; = "extra.class"

.field public static final EXTRA_DEX_PATH:Ljava/lang/String; = "extra.dex.path"

.field public static final FROM:Ljava/lang/String; = "extra.from"

.field public static final FROM_EXTERNAL:I = 0x0

.field public static final FROM_INTERNAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProxyActivity"


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field builder:Landroid/app/AlertDialog$Builder;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/example/steven/myview/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/steven/myview/MainActivity$1;-><init>(Lcom/example/steven/myview/MainActivity;)V

    iput-object v0, p0, Lcom/example/steven/myview/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private accumulate(I)I
    .locals 2
    .param p1, "a"    # I

    .prologue
    .line 72
    if-gtz p1, :cond_1

    .line 73
    const/4 v1, 0x0

    .line 79
    :cond_0
    return v1

    .line 75
    :cond_1
    const/4 v1, 0x0

    .line 76
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 77
    add-int/2addr v1, p1

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private max(II)Z
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 64
    if-le p1, p2, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private show(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 116
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/steven/myview/MainActivity;->builder:Landroid/app/AlertDialog$Builder;

    .line 117
    iget-object v1, p0, Lcom/example/steven/myview/MainActivity;->builder:Landroid/app/AlertDialog$Builder;

    const-string v2, "I am a alertdialog"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/example/steven/myview/MainActivity;->alertDialog:Landroid/app/AlertDialog;

    move-object v0, p1

    .line 118
    check-cast v0, Landroid/app/Activity;

    .line 119
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "show"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity.isFinishing():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/example/steven/myview/MainActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 126
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private static sum(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 60
    add-int v0, p0, p1
	const v0,0x7
    return v0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/steven/myview/ProxyMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra.dex.path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DynamicLoadHost/plugin.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/example/steven/myview/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f04001d

    invoke-virtual {p0, v1}, Lcom/example/steven/myview/MainActivity;->setContentView(I)V

    .line 32
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lcom/example/steven/myview/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    .local v0, "text":Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060015

    invoke-virtual {p0, v2}, Lcom/example/steven/myview/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/example/steven/myview/MainActivity;->sum(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
