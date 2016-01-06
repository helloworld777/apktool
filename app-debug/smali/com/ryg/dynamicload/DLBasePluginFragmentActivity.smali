.class public Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DLBasePluginFragmentActivity.java"

# interfaces
.implements Lcom/ryg/dynamicload/DLPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLBasePluginFragmentActivity"


# instance fields
.field protected mFrom:I

.field protected mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field protected mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field protected mProxyActivity:Landroid/support/v4/app/FragmentActivity;

.field protected that:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    .line 47
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 118
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 119
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach(Landroid/app/Activity;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V
    .locals 3
    .param p1, "proxyActivity"    # Landroid/app/Activity;
    .param p2, "pluginPackage"    # Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .prologue
    .line 67
    const-string v0, "DLBasePluginFragmentActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: proxyActivity= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    .end local p1    # "proxyActivity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    .line 69
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    .line 70
    iput-object p2, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 71
    return-void
.end method

.method public bindPluginService(Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 391
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 392
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->bindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 127
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 128
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 236
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 200
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 146
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 137
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 173
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 182
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 164
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 414
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 416
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 422
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 227
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 218
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 209
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 245
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 252
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 254
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    const-string v0, "extra.from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    .line 78
    :cond_0
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_1

    .line 79
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iput-object p0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    .line 81
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 85
    const-string v1, "DLBasePluginFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onCreate: from= "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_2

    const-string v0, "DLConstants.FROM_INTERNAL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 86
    :cond_2
    const-string v0, "FROM_EXTERNAL"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 345
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 346
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 314
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 316
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 326
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 327
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 285
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 352
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 300
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 302
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 266
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 268
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 272
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 273
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 275
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 293
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 295
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 280
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 259
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 261
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 307
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 309
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 319
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 320
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 333
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 334
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 336
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 339
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 340
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onWindowFocusChanged(Z)V

    .line 342
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 109
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 100
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mProxyActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startPluginActivity(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 364
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->startPluginActivityForResult(Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Lcom/ryg/dynamicload/internal/DLIntent;I)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "requestCode"    # I

    .prologue
    .line 373
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginService(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 382
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 383
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I

    move-result v0

    return v0
.end method

.method public unBindPluginService(Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
    .locals 2
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 400
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 401
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginFragmentActivity;->that:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method
