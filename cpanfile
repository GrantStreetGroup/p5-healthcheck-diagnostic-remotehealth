# Add your requirements here
requires 'perl', 'v5.10.0'; # for kwalitee

on test => sub {
    requires 'Test2::V0';
};

on develop => sub {
    requires 'Dist::Zilla::PluginBundle::Author::GSG';
};
