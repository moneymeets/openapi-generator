package org.openapitools.codegen.languages;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import io.swagger.v3.oas.models.media.Schema;
import org.openapitools.codegen.CodegenConfig;
import org.openapitools.codegen.CodegenType;
import org.openapitools.codegen.DefaultCodegen;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.TreeMap;

public class JsonCodegen extends DefaultCodegen implements CodegenConfig {
    public static final String PROJECT_NAME = "projectName";

    static Logger LOGGER = LoggerFactory.getLogger(JsonCodegen.class);

    public CodegenType getTag() {
        return CodegenType.CLIENT;
    }

    public String getName() {
        return "json";
    }

    public String getHelp() {
        return "Generates json output.";
    }

    @Override
    public String modelFileFolder() {
        return outputFolder;
    }

    public JsonCodegen() {
        super();

        supportsInheritance = true;
        supportsMixins = true;
        sortParamsByRequiredFlag = true;
    }

    @Override
    public String toDefaultValue(Schema p) {
        return super.toDefaultValue(p);
    }

    @Override
    public String getSchemaType(Schema p) {
        return super.getSchemaType(p);
    }

    @Override
    public String getTypeDeclaration(Schema p) {
        return super.getTypeDeclaration(p);
    }

    @Override
    public String toVarName(String name) {
        return name;
    }

    @Override
    public String toParamName(String name) {
        return name;
    }

    @Override
    public String toModelImport(String name) {
        return name;
    }

    @Override
    public String toModelName(String name) {
        return name;
    }

    @Override
    public String toModelFilename(String name) {
        return name;
    }

    @Override
    public String escapeQuotationMark(String input) {
        return input;
    }

    @Override
    public String escapeUnsafeCharacters(String input) {
        return input;
    }

    @Override
    public Map<String, Object> postProcessSupportingFileData(Map<String, Object> objs) {
        ObjectMapper mapper = new ObjectMapper();
        mapper.enable(SerializationFeature.INDENT_OUTPUT);

        Path outputPath = Paths.get(outputFolder + "/openapi-generator-schema.json");

        try {
            Files.createDirectories(outputPath.getParent());
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        try (FileOutputStream fos = new FileOutputStream(outputPath.toString())) {
            mapper.writeValue(fos, mapper.valueToTree(objs));
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        return new TreeMap<>();
    }
}
