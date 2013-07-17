.class Lcom/htc/calendar/MenuHelper$DateListener;
.super Ljava/lang/Object;
.source "MenuHelper.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MenuHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateListener"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mNav:Lcom/htc/calendar/Navigator;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/htc/calendar/Navigator;)V
    .locals 0
    .parameter "activity"
    .parameter "nav"

    .prologue
    .line 321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 322
    iput-object p1, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mActivity:Landroid/app/Activity;

    .line 323
    iput-object p2, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mNav:Lcom/htc/calendar/Navigator;

    .line 324
    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 7
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    const/4 v6, 0x0

    .line 327
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 328
    .local v1, goToTime:Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 330
    iput p2, v1, Landroid/text/format/Time;->year:I

    .line 331
    iput p3, v1, Landroid/text/format/Time;->month:I

    .line 332
    iput p4, v1, Landroid/text/format/Time;->monthDay:I

    .line 333
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 335
    iget-object v3, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/htc/calendar/WeekActivity;

    if-eqz v3, :cond_1

    .line 336
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 337
    .local v0, focusOn:Landroid/text/format/Time;
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 339
    iget-object v3, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/htc/calendar/CalendarPreferenceActivity;->getStartWeekDay(Landroid/content/Context;)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 340
    .local v2, start_week:I
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start_week: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goToTime.weekDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget v3, v1, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v2, :cond_0

    .line 343
    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    iget v4, v1, Landroid/text/format/Time;->weekDay:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    iput v3, v1, Landroid/text/format/Time;->monthDay:I

    .line 345
    :cond_0
    invoke-virtual {v1, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 346
    invoke-virtual {v0, v6}, Landroid/text/format/Time;->normalize(Z)J

    .line 347
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goToTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "focusOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v3, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mNav:Lcom/htc/calendar/Navigator;

    invoke-interface {v3, v1, v6, v0}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V

    .line 356
    .end local v0           #focusOn:Landroid/text/format/Time;
    .end local v2           #start_week:I
    :goto_0
    const-string v3, "MenuHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "goToTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 350
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/htc/calendar/MonthActivity;

    if-eqz v3, :cond_2

    .line 351
    iget-object v3, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mNav:Lcom/htc/calendar/Navigator;

    invoke-interface {v3, v1, v6}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;Z)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/htc/calendar/MenuHelper$DateListener;->mNav:Lcom/htc/calendar/Navigator;

    invoke-interface {v3, v1, v6}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;Z)V

    goto :goto_0
.end method
