.class public Lcom/ryg/dynamicload/DLBasePluginActivity;
.super Landroid/app/Activity;
.source "DLBasePluginActivity.java"

# interfaces
.implements Lcom/ryg/dynamicload/DLPlugin;


# static fields
.field private static final TAG:Ljava/lang/String; = "DLBasePluginActivity"


# instance fields
.field protected mFrom:I

.field protected mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field protected mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field protected mProxyActivity:Landroid/app/Activity;

.field protected that:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    .line 52
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 124
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 125
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public attach(Landroid/app/Activity;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V
    .locals 3
    .parameter "proxyActivity"
    .parameter "pluginPackage"

    .prologue
    .line 73
    const-string v0, "DLBasePluginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: proxyActivity= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 75
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 77
    return-void
.end method

.method public bindPluginService(Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I
    .locals 2
    .parameter "dlIntent"
    .parameter "conn"
    .parameter "flags"

    .prologue
    .line 399
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 400
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->bindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I

    move-result v0

    return v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 133
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 242
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 206
    invoke-super {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 161
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 196
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 232
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 215
    invoke-super {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 257
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 258
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 253
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v0, "extra.from"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    .line 84
    :cond_0
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_1

    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    iput-object p0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    .line 87
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 91
    const-string v1, "DLBasePluginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onCreate: from= "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_2

    const-string v0, "DLConstants.FROM_INTERNAL"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 92
    :cond_2
    const-string v0, "FROM_EXTERNAL"

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 351
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 352
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 354
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 320
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 332
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 333
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 335
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 291
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 292
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 294
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 358
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 359
    invoke-virtual {p0, p1}, Lcom/ryg/dynamicload/DLBasePluginActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 308
    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 274
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 278
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 279
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 301
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 285
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 265
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 267
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 315
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 325
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 326
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 328
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 339
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 342
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 345
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 346
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 115
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 97
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 106
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    if-nez v0, :cond_0

    .line 107
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startPluginActivity(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .parameter "dlIntent"

    .prologue
    .line 371
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/ryg/dynamicload/DLBasePluginActivity;->startPluginActivityForResult(Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Lcom/ryg/dynamicload/internal/DLIntent;I)I
    .locals 2
    .parameter "dlIntent"
    .parameter "requestCode"

    .prologue
    .line 381
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginService(Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 2
    .parameter "dlIntent"

    .prologue
    .line 390
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 391
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I

    move-result v0

    return v0
.end method

.method public unBindPluginService(Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
    .locals 2
    .parameter "dlIntent"
    .parameter "conn"

    .prologue
    .line 408
    iget v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mFrom:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setPluginPackage(Ljava/lang/String;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/DLBasePluginActivity;->that:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I

    move-result v0

    return v0
.end method
