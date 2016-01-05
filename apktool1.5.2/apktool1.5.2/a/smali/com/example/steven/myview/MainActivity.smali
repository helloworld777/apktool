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

    .line 68
    new-instance v0, Lcom/example/steven/myview/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/example/steven/myview/MainActivity$1;-><init>(Lcom/example/steven/myview/MainActivity;)V

    iput-object v0, p0, Lcom/example/steven/myview/MainActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private show(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 92
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/example/steven/myview/MainActivity;->builder:Landroid/app/AlertDialog$Builder;

    .line 94
    iget-object v1, p0, Lcom/example/steven/myview/MainActivity;->builder:Landroid/app/AlertDialog$Builder;

    const-string v2, "I am a alertdialog"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/example/steven/myview/MainActivity;->alertDialog:Landroid/app/AlertDialog;

    move-object v0, p1

    .line 95
    check-cast v0, Landroid/app/Activity;

    .line 96
    .local v0, activity:Landroid/app/Activity;
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

    .line 97
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/example/steven/myview/MainActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 103
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/example/steven/myview/ProxyMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, intent:Landroid/content/Intent;
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

    .line 61
    invoke-virtual {p0, v0}, Lcom/example/steven/myview/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

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

    .line 57
    .local v0, text:Landroid/widget/TextView;
    return-void
.end method
